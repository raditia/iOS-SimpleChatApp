//
//  ContactViewController.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 27/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import UIKit
import Moya

class ContactViewController: UITableViewController, UISearchResultsUpdating {

	var contactList = [User]()
	var filteredContact = [User]()
	let cellID = "userCell"
	let contactProvider = MoyaProvider<UserAPI>()
	let searchController = UISearchController(searchResultsController: nil)
	
    override func viewDidLoad() {
        super.viewDidLoad()
		getAllUsers()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
	
	override func viewWillAppear(_ animated: Bool) {
		
		setNavigationBar()
		configureTableView()
		setupSearchController()
		
		tableView.reloadData()
	}

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contactList.count
    }
	
	private func configureTableView() {
		
		tableView.estimatedRowHeight = 100
		tableView.rowHeight = UITableViewAutomaticDimension
		tableView.register(UITableViewCell.self,forCellReuseIdentifier: cellID)
	}
	

	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: cellID)
		let contact: User
		
		contact = contactList[indexPath.row]
		cell.textLabel?.text = contact.name
		cell.detailTextLabel?.text = contact.email
		
		let userImageUrl = URL(string: contact.avatar_url)
		
//		cell.imageView?.downloadedFrom(url: userImageUrl!)
		cell.imageView?.downloadedFrom(link: contact.avatar_url)
		
//		run asynchronously
//		DispatchQueue.global().async {
//			let data = try? Data(contentsOf: userImageUrl!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
//			DispatchQueue.main.async {
//				cell.imageView?.image = UIImage(data: data!)
//
//			}
//		}
		
        return cell
    }
	

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
	
	// Setup the Search Controller
	private func setupSearchController() {
		
		searchController.searchResultsUpdater = self as UISearchResultsUpdating
		searchController.hidesNavigationBarDuringPresentation = false
		searchController.dimsBackgroundDuringPresentation = false
		searchController.searchBar.sizeToFit()
		self.tableView.tableHeaderView = searchController.searchBar
		searchController.searchBar.placeholder = "Find contacts..."
	}
	
	private func setNavigationBar() {
		
		navigationItem.title = "Contact List"
		navigationController?.navigationBar.prefersLargeTitles = true
	}
	
	func updateSearchResults(for searchController: UISearchController) {
		//
	} 
	
	private func getAllUsers() {
		
		contactProvider.request(.getAllUsers) { (result) in
			
			switch result {
			case .success(let response):
				let json = try! JSONSerialization.jsonObject(with: response.data, options: [])
//				print(json)

				let response = try! JSONDecoder().decode(Response.self, from: response.data)
				print(response.results.users)
				
				let contact = response.results.users
//				let contact = try! JSONDecoder().decode([User].self, from: response.data)
				self.contactList = contact
				
				self.tableView.reloadData()
				
			case .failure(let error):
				print("Piye: \(error)")
			}
		}
	}
}

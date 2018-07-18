//
//  SettingsViewController.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 28/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import UIKit
import Qiscus

class SettingsViewController: UIViewController {

	@IBOutlet weak var logoutButton: UIButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()

		let textAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
		
		navigationItem.title = "Settings"
		navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
		navigationController?.navigationBar.prefersLargeTitles = true
		navigationController?.navigationBar.barTintColor = UIColor(rgb: 0x1A7F45)
		
		logoutButton.layer.cornerRadius = 10.0
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func logoutButtonTapped(_ sender: Any) {
		
		if Qiscus.isLoggedIn == true {
			
			Qiscus.clear()
			present(LoginViewController(), animated: true, completion: nil)
		}
	}

}

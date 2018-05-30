//
//  SettingsViewController.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 28/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		let textAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
		
		navigationItem.title = "Settings"
		navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
		navigationController?.navigationBar.prefersLargeTitles = true
		navigationController?.navigationBar.barTintColor = UIColor(rgb: 0x1A7F45)
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

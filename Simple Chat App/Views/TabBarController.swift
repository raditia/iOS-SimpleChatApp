//
//  TabBarController.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 28/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

		let roomListVC = RoomListViewController(nibName: "RoomListViewController", bundle: nil)
		let contactVC = ContactViewController(nibName: "ContactViewController", bundle: nil)
		let settingsVC = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
		
		roomListVC.tabBarItem = UITabBarItem(title: "Room List",
											 image: UIImage(named: "chat"),
											 tag: 1)
		contactVC.tabBarItem = UITabBarItem(title: "Contacts",
											image: UIImage(named: "people"),
											tag: 2)
		settingsVC.tabBarItem = UITabBarItem(title: "Setting",
											 image: UIImage(named: "settings"),
											 tag: 3)
		
		let controller = [roomListVC, contactVC, settingsVC]
		
		viewControllers = controller
		viewControllers = controller.map { UINavigationController(rootViewController: $0) }
    }

}

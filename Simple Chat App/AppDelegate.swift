//
//  AppDelegate.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 08/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import UIKit
import Qiscus

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		// Setup Qiscus
		Qiscus.setup(withAppId: "simple-ch-cedp4oaggh8",
					 userEmail: "gustiraditia@gmail.com",
					 userKey: "09d8c8b5576be93a777b61b5ae647a5f",
					 username: "Gusti Raditia",
					 avatarURL: "https://favim.com/orig/201106/15/animal-beautiful-cat-cute-djur-Favim.com-76976.jpg",
					 delegate: nil,
					 secureURl: true)
//
//		Qiscus.setup(withAppId: "simple-ch-cedp4oaggh8",
//					 userEmail: "raditiamadya@gmail.com",
//					 userKey: "09d8c8b5576be93a777b61b5ae647a5f",
//					 username: "Raditia Madya",
//					 avatarURL: "https://favim.com/orig/201106/15/animal-beautiful-cat-cute-djur-Favim.com-76976.jpg",
//					 delegate: nil,
//					 secureURl: true)
		
		// Setup window
		let viewController = LoginViewController()
		let navigationController = UINavigationController(rootViewController: viewController)
		
		self.window = UIWindow(frame: UIScreen.main.bounds)
		window?.rootViewController = navigationController
		window?.makeKeyAndVisible()
		
		return true
	}

	func applicationWillResignActive(_ application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
		// Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
	}

	func applicationDidEnterBackground(_ application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
		// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	}

	func applicationWillEnterForeground(_ application: UIApplication) {
		// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
	}

	func applicationDidBecomeActive(_ application: UIApplication) {
		// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	}

	func applicationWillTerminate(_ application: UIApplication) {
		// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	}


}


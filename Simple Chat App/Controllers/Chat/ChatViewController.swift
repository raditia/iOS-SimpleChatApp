//
//  ChatViewController.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 08/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import UIKit
import Qiscus

class ChatViewController: UIViewController {

	@IBOutlet weak var targetField: UITextField!
	@IBOutlet weak var chatButton: UIButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		let cornerRadius: CGFloat = 10.0
		self.chatButton.layer.cornerRadius = cornerRadius
    }
	
	override func viewWillAppear(_ animated: Bool) {
		navigationController?.navigationBar.isTranslucent = false
		navigationController?.navigationBar.isHidden = true
	}
	
	@IBAction func chatButtonTapped(_ sender: Any) {
		self.startChat()
	}
	
	func startChat(){
		let email = targetField.text!
		let view = Qiscus.chatView(withUsers: [email])
		navigationController?.navigationBar.isHidden = false
		self.navigationController?.pushViewController(view, animated: true)
	}
    

	
}

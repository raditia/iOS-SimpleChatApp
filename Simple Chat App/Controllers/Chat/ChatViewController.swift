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
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		navigationController?.navigationBar.isTranslucent = false
		
		let button = UIButton(frame: CGRect(x: 130, y:150, width:100, height:30))
		button.backgroundColor = UIColor.green
		button.setTitle("Start Chat", for: .normal)
		button.addTarget(self, action: #selector(ChatViewController.startChat), for: .touchUpInside)
		self.view.addSubview(button)
    }

	@objc func startChat(){
		let email = targetField.text!
		let view = Qiscus.chatView(withUsers: [email])
		self.navigationController?.pushViewController(view, animated: true)
	}
    

	
}

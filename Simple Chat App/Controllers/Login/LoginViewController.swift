//
//  LoginViewController.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 08/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import UIKit
import Qiscus

class LoginViewController: UIViewController {

	@IBOutlet weak var emailField: UITextField!
	@IBOutlet weak var displayNameField: UITextField!
	@IBOutlet weak var passwordField: UITextField!
	@IBOutlet weak var loginButton: UIButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		self.setupUI()

        // Do any additional setup after loading the view.
		navigationController?.navigationBar.isHidden = true
    }
	
	override func viewWillAppear(_ animated: Bool) {
		navigationController?.navigationBar.isHidden = true
	}
	
	@IBAction func loginButtonTapped(_ sender: Any) {
		self.login()
	}
	
}

extension LoginViewController: UITextFieldDelegate {
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		self.actionOfReturnKey(textField.tag)
		
		return true
	}
}

extension LoginViewController {
	
	func setupUI() {
		self.title = "Login"
		
		// MARK: - Delegation text field
		self.displayNameField.returnKeyType = .continue
		self.emailField.returnKeyType = .continue
		self.passwordField.returnKeyType = .done
		
		self.displayNameField.delegate = self
		self.emailField.delegate = self
		self.passwordField.delegate = self
		
		// MARK: - Custom view & components
		let cornerRadius: CGFloat = 10.0
		self.emailField.layer.cornerRadius = cornerRadius
		self.displayNameField.layer.cornerRadius = cornerRadius
		self.passwordField.layer.cornerRadius = cornerRadius
		self.loginButton.layer.cornerRadius = cornerRadius
		
		self.displayNameField.becomeFirstResponder()
//		self.hideKeyboardWhenTappedAround()
		
	}
	
	func actionOfReturnKey(_ tag: Int) {
		switch tag {
		case 0:
			self.emailField.becomeFirstResponder()
			break
		case 1:
			self.passwordField.becomeFirstResponder()
			break
		case 2:
			self.login()
			break
		default:
			break
		}
	}
	
	func login() {
		
		guard let email = self.emailField.text else {
			return
		}
		guard let displayName = self.displayNameField.text else {
			return
		}
		guard let password = self.passwordField.text else {
			return
		}

		if !(email.isEmpty) {
			
			Qiscus.setup(withAppId: Helper.APP_ID,
						 userEmail: email,
						 userKey: password,
						 username: displayName,
						 avatarURL: "",
						 secureURl: true)
		}
		else {
			if Qiscus.isLoggedIn { Qiscus.clear() }
			
//			self.delegate?.needLoggedIn("")
		}


//		let view = Qiscus.chatView(withUsers: ["gustiraditia@gmail.com"])
		let view = ContactViewController()
		let navigationController = UINavigationController(rootViewController: view)
		
		self.present(navigationController, animated: true, completion: nil)
		
//		Qiscus.roomList(withLimit: 100, page: 1, onSuccess: { (rooms, totalRoom, currentPage, limit) in
//
//			print("room list: \(rooms)")
//		}) { (error) in
//			// resulting error in string
//		}
		
	}
	
}

extension LoginViewController : QiscusConfigDelegate{
	func qiscusConnected() {
		print("connect") // your connected callback
	}
	
	func qiscusFailToConnect(_ withMessage: String) {
		print(withMessage) //your error auth callback
	}
}

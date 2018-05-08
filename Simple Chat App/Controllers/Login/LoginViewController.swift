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

	@IBOutlet weak var usernameField: UITextField!
	@IBOutlet weak var displayNameField: UITextField!
	@IBOutlet weak var passwordField: UITextField!
	@IBOutlet weak var loginButton: UIButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		self.setupUI()

        // Do any additional setup after loading the view.
		navigationController?.navigationBar.isHidden = true
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
		self.usernameField.returnKeyType = .continue
		self.passwordField.returnKeyType = .done
		
		self.displayNameField.delegate = self
		self.usernameField.delegate = self
		self.passwordField.delegate = self
		
		// MARK: - Custom view & components
		let cornerRadius: CGFloat = 10.0
		self.usernameField.layer.cornerRadius = cornerRadius
		self.displayNameField.layer.cornerRadius = cornerRadius
		self.passwordField.layer.cornerRadius = cornerRadius
		self.loginButton.layer.cornerRadius = cornerRadius
		
		self.displayNameField.becomeFirstResponder()
//		self.hideKeyboardWhenTappedAround()
		
	}
	
	func actionOfReturnKey(_ tag: Int) {
		switch tag {
		case 0:
			self.usernameField.becomeFirstResponder()
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
		
		guard let username = self.usernameField.text else {
			return
		}
		guard let displayName = self.displayNameField.text else {
			return
		}
		guard let password = self.passwordField.text else {
			return
		}
		
		
	}
}

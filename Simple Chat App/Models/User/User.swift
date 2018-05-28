//
//  User.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 26/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import Foundation

struct Response: Decodable {
	
	let results: Result
	let status: Int
}

struct Result: Decodable {
	
	let meta: Meta
	let users: [User]
}

struct Meta: Decodable {
	
	let total_data: Int
	let total_page: Int
}

struct User: Decodable {
	
	let avatar_url: String
//	let created_at: Date
//	let updated_at: Date
	let email: String
	let id: Int
	let name: String
	let username: String
}

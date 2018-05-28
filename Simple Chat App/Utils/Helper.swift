//
//  Helper.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 14/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import Foundation
import Alamofire

class Helper: NSObject {
	
	static var APP_ID: String {
		get {
			return "simple-ch-cedp4oaggh8"
		}
	}
	
	static var BASE_URL: String {
		get {
			return "https://simple-ch-cedp4oaggh8.qiscus.com"
		}
	}
	
	static var headers : HTTPHeaders {
		get {
			return [
				"QISCUS_SDK_SECRET": "09d8c8b5576be93a777b61b5ae647a5f",
				"Content-type": "application/json"
			]
		}
	}
	
	static var URL_UPLOAD: String {
		get {
			return "https://\(APP_ID).qiscus.com/api/v2/sdk/upload"
		}
	}
}

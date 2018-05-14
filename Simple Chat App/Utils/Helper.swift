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
	
	static var URL_UPLOAD: String {
		get {
			return "https://\(APP_ID).qiscus.com/api/v2/sdk/upload"
		}
	}
}

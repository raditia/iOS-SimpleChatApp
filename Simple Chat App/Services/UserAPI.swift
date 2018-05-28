//
//  UserAPI.swift
//  Simple Chat App
//
//  Created by Raditia Madya on 26/05/18.
//  Copyright © 2018 Raditia. All rights reserved.
//

import Foundation
import Moya

enum UserAPI {
	
	case getAllUsers
}

extension UserAPI: TargetType {
	var baseURL: URL {
		
		return URL(string: Helper.BASE_URL)!
	}
	
	var path: String {
		
		switch self {
		case .getAllUsers:
			return "/api/v2.1/rest/get_user_list"
		}
	}
	
	var method: Moya.Method {
		
		switch self {
		case .getAllUsers:
			return .get
		}
	}
	
	var sampleData: Data {
		
		switch self {
		case .getAllUsers:
			return Data()
		}
	}
	
	var task: Task {
		
		switch self {
		case .getAllUsers:
			return .requestPlain
		}
	}
	
	var headers: [String : String]? {
		
		return Helper.headers
	}
	
	
}

//
//  APIConstants.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/15.
//

import Foundation

struct APIConstants{
    // MARK: - Base URL
    static let baseURL = "http://13.124.62.236/"
    
    // MARK: - Feature URL
    static let loginURL = baseURL + "auth/signin"
    static let signupURL = baseURL + "auth/signup"
}

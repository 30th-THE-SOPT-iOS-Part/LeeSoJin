//
//  LoginModel.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/15.
//

import Foundation

struct LoginResponse: Codable{
    let status: Int
    let success: Bool
    let message: String
    let data: LoginData?
}

struct LoginData: Codable{
    let name: String
    let email: String
}

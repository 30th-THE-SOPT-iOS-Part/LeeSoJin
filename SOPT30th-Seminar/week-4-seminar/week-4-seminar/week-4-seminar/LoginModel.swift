//
//  LoginModel.swift
//  week-4-seminar
//
//  Created by Sojin Lee on 2022/05/07.
//

/*
 {}: 중괄호 - Object
 []: 배열
 */

import Foundation

struct LoginResponse: Codable{
    let status: Int
    //let success: Bool?
    let message: String
    let data: LoginData?
}

struct LoginData: Codable{
    let name: String
    let email: String
}

struct MessageData: Codable{
    let reason: String
    let location: String
}

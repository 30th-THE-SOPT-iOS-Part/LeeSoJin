//
//  SignupModel.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/15.
//

import Foundation

struct SignupResponse: Codable{
    let status: Int
    let success: Bool
    let message: String
    let data: SignupData?
}

struct SignupData: Codable{
    let id: Int
}



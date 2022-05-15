//
//  NetworkResult.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/15.
//

import Foundation

enum NetworkResult<T>{
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}


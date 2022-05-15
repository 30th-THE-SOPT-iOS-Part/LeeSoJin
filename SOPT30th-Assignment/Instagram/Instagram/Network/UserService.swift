//
//  UserService.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/05/15.
//

import Foundation
import Alamofire

class UserService{
    static let shared=UserService()
    private init() {}
    
    func login(name: String, email:String, password: String, completion: @escaping (NetworkResult<Any>) -> Void)
    {
        let url = APIConstants.loginURL
        let header: HTTPHeaders = ["Content-type": "application/json"]
        let body: Parameters = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)

        dataRequest.responseData { response in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                let networkResult = self.judgeStatus(by: statusCode, value, LoginResponse.self)
                completion(networkResult)

            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    func signUp(name: String, email:String, password: String, completion: @escaping (NetworkResult<Any>) -> Void)
    {
        let url = APIConstants.signupURL
        let header: HTTPHeaders = ["Content-type": "application/json"]
        let body: Parameters = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
        
        dataRequest.responseData { response in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else { return }
                guard let value = response.value else { return }
                let networkResult = self.judgeStatus(by: statusCode, value, SignupResponse.self)
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)
            }
        }
    }
    
    
    private func judgeStatus<T:Codable> (by statusCode: Int, _ data: Data, _ type: T.Type) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(type.self, from: data)
        else { return .pathErr }
        
        switch statusCode {
        case 200 ..< 300: return .success(decodedData as Any)
        case 400 ..< 500: return .pathErr
        case 500: return .serverErr
        default: return .networkFail
        }
    }
}


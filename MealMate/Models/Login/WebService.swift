//
//  WebService.swift
//  MealMate
//
//  Created by HASSEN on 9/12/2022.
//

import Foundation

enum AuthenticationError: Error {
    case invalidCredentials
    case custom(errorMessage: String)
}

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

struct LoginRequestBody: Codable {
    let email: String
    let password: String
}

struct LoginResponse: Codable {
    let token: String?
    let message: String?
    let success: Bool?
    let user: User?
}

struct User: Codable {
    let id, username, password, email: String?
    let phone: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case username, password, email, phone
    }
}
class WebService {
    func login(email: String, password: String, completion: @escaping (Result<String, AuthenticationError>) -> ()) {
        
        guard let url = URL(string: "https://mealmate.azurewebsites.net/user/login") else {
            completion(.failure(.custom(errorMessage: "URL is not correct")))
            return
        }
        
        let body = LoginRequestBody(email: email, password: password)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { data, response, error  in
            
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data)
            else {
                
                completion(.failure(.invalidCredentials))
                
                return
            }
            let defaults = UserDefaults.standard
            defaults.setValue(loginResponse.user?.email, forKey: "useremail")
            defaults.setValue(loginResponse.user?.username, forKey: "username")
            defaults.setValue(loginResponse.user?.id, forKey: "userid")
            defaults.setValue(loginResponse.user?.phone, forKey: "userphone")
            
            guard let token = loginResponse.token else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            completion(.success(token))
        }.resume()
        
        
        
        
        
        
        
        
        
        
    }
}

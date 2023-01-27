//
//  SignUpModel.swift
//  MealMate
//
//  Created by HASSEN on 10/12/2022.
//

import SwiftUI
import Foundation

struct RegisterUser: Hashable, Codable {
    let username, password, email, phone: String?
    let id: String?
    
    init(username: String,password:String,email: String ,phone: String,id:String){
        self.username = username
        self.password = password
        self.email = email
        self.phone = phone
        self.id = id
    }
    
    enum CodingKeys: String, CodingKey {
        case username = "username"
        case password = "password"
        case email = "email"
        case phone = "phone"
        case id = "_id"
    }
}


//
//  SignUpModel.swift
//  MealMate
//
//  Created by HASSEN on 9/12/2022.
//

import SwiftUI

struct SignUpModel: Identifiable, Codable {
    
    let id: String
    let email: String
    let password: String
    let Sexe: String
    let phone: String
    
    init(id:String,email: String, password: String,Sexe:String,phone:String) {
        self.id = id
        self.email = email
        self.password = password
        self.Sexe = Sexe
        self.phone = phone
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case email
        case password
        case Sexe
        case phone
        

    }
}


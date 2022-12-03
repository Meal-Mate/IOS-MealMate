//
//  v.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI
import Foundation

struct RestaurantPostModel: Identifiable, Hashable, Codable{
    
    
    let id, name, address, email, description: String
    let phone: String
    
    init (id:String,name:String,address:String,email:String,phone:String,description:String){
        self.id=id
        self.name=name
        self.address=address
        self.email=email
        self.phone=phone
        self.description=description
    }

    enum CodingKeys: String, CodingKey {
        
        case id = "_id"
        case name, address, email, phone, description
    }
   
}

struct RestaurantDataModel :  Codable{
    
    let data: [RestaurantPostModel]

}




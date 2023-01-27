//
//  PropositionModel.swift
//  MealMate
//
//  Created by HASSEN on 27/11/2022.
//

import Foundation

struct PropositionPostModel: Codable {
    let propostiondDate, propostionStatus, mates: String
    let restaurantName, id: String
   

    enum CodingKeys: String, CodingKey {
        case propostiondDate, propostionStatus, mates, restaurantName
        case id = "_id"
    }
}

struct PropositionDataModel : Codable {
    let dataPropsition: [PropositionPostModel]
}





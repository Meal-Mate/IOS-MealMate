//
//  PropositionModel.swift
//  MealMate
//
//  Created by HASSEN on 27/11/2022.
//

import SwiftUI


struct PropositionPostModel: Identifiable, Codable {
    
    let id, owner, mates: String
    let location: Location
    let date: String

    
    init(id: String, owner: String, location: Location, mates: String, date: String ) {
        self.id = id
        self.owner = owner
        self.location = location
        self.mates = mates
        self.date = date
    }
    
    enum CodingKeys: String, CodingKey {
        
        case id = "_id"
        case owner, mates, date
        case location
    }
}

struct PropositionDataModel : Codable {
    let dataPropsition: [PropositionPostModel]
}

struct Location: Codable {
    let type: String
    let coordinates: [Double]
}



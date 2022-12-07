//
//  ExploreQuickLink.swift
//  MealMate
//
//  Created by HASSEN on 3/12/2022.
//

import SwiftUI

struct ExploreQuickLink: Identifiable, Hashable {
    var id = UUID()
    let title: String
}

var exploreQuickLinks = [
    ExploreQuickLink(
        title: "Premium Plan Subscription"
    ),
    
    ExploreQuickLink(
        title: "Report a Problem"
    )
]

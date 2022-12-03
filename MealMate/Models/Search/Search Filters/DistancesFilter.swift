//
//  CategoryFilter.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct DistancesFilter: Identifiable, Hashable {
    var id = UUID()
    let title: String
}

var categoyrFilters = [
    DistancesFilter(
        title: "< 5KM"
    ),
    
    DistancesFilter(
        title: "5KM - 10KM"
    ),
    
    DistancesFilter(
        title: "> 10KM"
    )
]

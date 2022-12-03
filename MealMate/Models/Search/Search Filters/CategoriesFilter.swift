//
//  ProficiencyFilter.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct CategoriesFilter: Identifiable, Hashable {
    var id = UUID()
    let title: String
}

var categoriesFilter = [
    CategoriesFilter(
        title: "Burger"
    ),
    
    CategoriesFilter(
        title: "Pizza"
    ),
    
    CategoriesFilter(
        title: "Sushi"
    ),
    CategoriesFilter(
        title: "Ramen"
    ),
    CategoriesFilter(
        title: "Chicken"
    )
    
    
]

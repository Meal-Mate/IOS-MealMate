//
//  CourseDurationFilter.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct CourseDurationFilter: Identifiable, Hashable {
    var id = UUID()
    let title: String
}

var courseDurationFilters = [
    CourseDurationFilter(
        title: "5 Stars"
    ),
    
    CourseDurationFilter(
        title: "4 Stars"
    ),
    
    CourseDurationFilter(
        title: "3 Stars"
    )
]

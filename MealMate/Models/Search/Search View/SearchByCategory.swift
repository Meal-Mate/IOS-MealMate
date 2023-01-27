//
//  SearchByCategory.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct SearchByCategory: Identifiable, Hashable {
    var id = UUID()
    let icon: String
    let iconBackground: Color
    let title: String
    let bodyText: String
}

var searchByCategory = [
    SearchByCategory(
        icon: Icons.brush,
        iconBackground: Colors.blue,
        title: "Digital Design",
        bodyText: "32 courses available"
    ),
    
    SearchByCategory(
        icon: Icons.computer,
        iconBackground: Colors.orange,
        title: "Computer Programming",
        bodyText: "47 courses available"
    ),
    
    SearchByCategory(
        icon: Icons.bolt,
        iconBackground: Colors.green,
        title: "Online Marketing",
        bodyText: "9 courses available"
    ),
    
    SearchByCategory(
        icon: Icons.layers,
        iconBackground: Colors.indigo,
        title: "Digital Design",
        bodyText: "24 courses available"
    ),
    
    SearchByCategory(
        icon: Icons.clock,
        iconBackground: Colors.teal,
        title: "Time Management",
        bodyText: "3 courses available"
    )
]


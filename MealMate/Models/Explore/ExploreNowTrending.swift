//
//  SwiftUIView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct ExploreNowTrending: Identifiable, Hashable {
    var id = UUID()
    let image: String
    let subtitle: String
    let title: String
    let bodyText: String
    let instructorImage: String
    let instructorName: String
    let instructorBIO: String
}

var exploreNowTrendingCourses = [
    ExploreNowTrending(
        image: Images.ExploreRestaurant2,
        subtitle: "Open Now",
        title: "Via Mercato",
        bodyText: "Italian and Mediterranean Kitchen",
        instructorImage: Images.Exploreflag1,
        instructorName: "Italian Food",
        instructorBIO: "Via Mercato Lac 2"
    ),
    
    ExploreNowTrending(
        image: Images.ExploreRestaurant3,
        subtitle: "Open Now",
        title: "Chili's",
        bodyText: "Mexican and American Kitchen",
        instructorImage: Images.Exploreflag2,
        instructorName: "Mexican Food",
        instructorBIO: "Chili's Lac 2"
    ),
    
    ExploreNowTrending(
        image: Images.ExploreRestaurant1,
        subtitle: "Open Now",
        title: "China Town Resto",
        bodyText: "Chinese, korean Kitchen",
        instructorImage: Images.Exploreflag3,
        instructorName: "Chinese Food",
        instructorBIO: "China Town carthage"
    )
]

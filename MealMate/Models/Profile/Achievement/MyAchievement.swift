//
//  MyAchievement.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct MyAchievement: Identifiable, Hashable {
    var id = UUID()
    let icon: String
    let iconBackground: Color
    let title: String
    let bodyText: String
}

var myAchievements = [
    MyAchievement(
        icon: Icons.bolt,
        iconBackground: Colors.blue,
        title: "Off to a Great Start",
        bodyText: "Start your First match of the day"
    ),
    MyAchievement(
        icon: Icons.layers,
        iconBackground: Colors.orange,
        title: "Keen on Learning",
        bodyText: "Complete at least 5 courses."
    ),
    
    MyAchievement(
        icon: Icons.thumbsUp,
        iconBackground: Colors.green,
        title: "Marketing Master",
        bodyText: "Finish 3 marketing courses in a day."
    ),
    
    MyAchievement(
        icon: Icons.star,
        iconBackground: Colors.indigo,
        title: "Quick Learner",
        bodyText: "Complete a course within a week."
    )
]

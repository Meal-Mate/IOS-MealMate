//
//  AchievementKeyInformation.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct AchievementKeyInformation: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let information: String
}

var achievementKeyInformation = [
    AchievementKeyInformation(
        title: "Achieved",
        information: "20 Nov 2020"
    ),
    
    AchievementKeyInformation(
        title: "Courses Completed",
        information: "17"
    ),
    
    AchievementKeyInformation(
        title: "Lessons Taken",
        information: "93"
    ),
    
    AchievementKeyInformation(
        title: "Time Watched",
        information: "46 h 09 min"
    ),
    
    AchievementKeyInformation(
        title: "Certificates Received",
        information: "5"
    )
]

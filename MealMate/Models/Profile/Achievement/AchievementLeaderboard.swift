//
//  AchievementLeaderboard.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct AchievementLeaderboard: Identifiable, Hashable {
    var id = UUID()
    let image: String
    let name: String
    let bodyText: String
}

var achievementLeaderboard = [
    AchievementLeaderboard(
        image: Images.achievementLeaderboard1,
        name: "Mathew Clarke",
        bodyText: "45 achievements unlocked."
    ),
    
    AchievementLeaderboard(
        image: Images.achievementLeaderboard2,
        name: "Mia Mitchel",
        bodyText: "38 achievements unlocked."
    ),
    
    AchievementLeaderboard(
        image: Images.achievementLeaderboard3,
        name: "Andrew Morrison",
        bodyText: "22 achievements unlocked."
    ),
    
    AchievementLeaderboard(
        image: Images.achievementLeaderboard4,
        name: "Hannah Smith",
        bodyText: "8 achievements unlocked."
    ),
    
    AchievementLeaderboard(
        image: Images.achievementLeaderboard5,
        name: "Anthony Mark",
        bodyText: "3 achievements unlocked."
    )
]

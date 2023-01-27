//
//  AchievementLeaderboardItem.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct AchievementLeaderboardItem: View {
    var achievementLeaderboard: AchievementLeaderboard
    
    var body: some View {
        SmallImageTextIcon(
            image:
                achievementLeaderboard.image,
            title:
                achievementLeaderboard.name,
            bodyText:
                achievementLeaderboard.bodyText
        )
        .frame(width: ScreenSize.screenWidth-32)
    }
}

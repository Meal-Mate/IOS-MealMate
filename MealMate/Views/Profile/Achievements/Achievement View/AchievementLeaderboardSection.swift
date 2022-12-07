//
//  SwiftUIView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct AchievementLeaderboardSection: View {
    @State private var leaderboardItems = achievementLeaderboard
    
    var body: some View {
        VStack(spacing: 15) {
            ListSectionHeader(title: "Leaderboard", doesHaveAButton: true, buttonText: "See All")
                .frame(width: ScreenSize.screenWidth-32)
            
            information
        }
    }
    
    var information: some View {
        VStack(spacing: 15) {
            ListDivider()
            
            ForEach(leaderboardItems) { leaderboardItem in
                AchievementLeaderboardItem(achievementLeaderboard: leaderboardItem)
                ListDivider()
            }
        }
    }
}

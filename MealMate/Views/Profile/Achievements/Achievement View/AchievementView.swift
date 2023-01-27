//
//  AchievementView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct AchievementView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                AchievementCardSection()
                AchievementKeyInformationSection()
                AchievementLeaderboardSection()
            }
            .padding(.top, 30)
        }
        .navigationBarTitle("Achievement", displayMode: .inline)
    }
}

//
//  SwiftUIView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct AchievementKeyInformationItem: View {
    var achievementKeyInformation: AchievementKeyInformation
    
    var body: some View {
        TextOnly(
            title:
                achievementKeyInformation.title,
            information:
                achievementKeyInformation.information
        )
        .frame(width: ScreenSize.screenWidth-32)
    }
}

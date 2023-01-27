//
//  AchievementCardSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct AchievementCardSection: View {
    var body: some View {
        AchievementCard(
            icon:
                Icons.bolt,
            title:
                "Off to a Great Start",
            bodyText:
                "Start a new course.",
            backgroundColor:
                LinearGradient(gradient: Gradient(colors: [Color("BlueGradient50%Opacity"), Colors.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .frame(width: ScreenSize.screenWidth-32)
    }
}

//
//  AchievementKeyInformationSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct AchievementKeyInformationSection: View {
    @State private var informationItems = achievementKeyInformation
    
    var body: some View {
        VStack(spacing: 15) {
            ListSectionHeader(title: "Key Information")
                .frame(width: ScreenSize.screenWidth-32)
            
            information
        }
    }
    
    var information: some View {
        VStack(spacing: 20) {
            ListDivider()
            
            ForEach(informationItems) { informationItem in
                AchievementKeyInformationItem(achievementKeyInformation: informationItem)
                ListDivider()
            }
        }
    }
}

//
//  MyAchievementsSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct MyAchievementsSection: View {
    @State private var myAchievementItems = myAchievements
    
    var body: some View {
        Section(header: sectionHeader) {
            achievements
        }
    }
    
    var sectionHeader: some View {
        ListSectionHeader(title: "My Achievements", doesHaveAButton: false)
    }
    
    var achievements: some View {
        ForEach(myAchievementItems) { myAchievement in
            NavigationLink(
                destination:
                    AchievementView()
            ) {
                MyAchievementItem(gradientIndex: myAchievementItems.firstIndex(of: myAchievement) ?? 0, myAchievement: myAchievement)
            }
        }
        .listRowInsets(ListPadding.padding15)
    }
}

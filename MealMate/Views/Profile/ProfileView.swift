//
//  ProfileView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct ProfileView: View {
    static let tag = "Profile"
    
    @State private var showCertificateDetails = false
    
    var body: some View {
        List {
            UserSection()
            MyAchievementsSection()
            ProfileQuickActionsSection()
            exploreLatestCoursesButton
        }
        .listStyle(InsetGroupedListStyle())
        .addNavigationBarItems(title: "Profile", icon: Icons.cog, selectedView: SelectedView.settings)
    }
    
    var exploreLatestCoursesButton: some View {
        HStack(spacing: 0) {
            Spacer()
            Button("Log Out") {
                //MARK: TODO here
            }
            .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.headline.weight(.semibold)))
            Spacer()
        }
    }
}



//
//  ProfileView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct ProfileView: View {
    static let tag = "Profile"
    @EnvironmentObject private var loginVM: LoginViewModel
    @Binding var showHome: Bool
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
                loginVM.logout()
                if !loginVM.isAuthenticated {
                    print("aaa")
                    print(showHome)
                }
            }
            .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.headline.weight(.semibold)))
            Spacer()
            
        }
    }
}



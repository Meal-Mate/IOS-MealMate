//
//  ExploreView.swift
//  MealMate
//
//  Created by HASSEN on 3/12/2022.
//

import SwiftUI

struct ExploreView: View {
    static let tag = "Explore"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                NowTrendingSection()
                //CourseCategoriesSection()
                QuickLinksSection()
            }
        }
        .addNavigationBarItems(title: "Explore", icon: Icons.cog, selectedView: SelectedView.settings)
    }
}

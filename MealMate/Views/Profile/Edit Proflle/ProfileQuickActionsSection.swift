//
//  ProfileQuickActionsSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct ProfileQuickActionsSection: View {
    @State private var quickActions = profileQuickActions
    
    var body: some View {
        Section(header: sectionHeader) {
            actions
        }
    }
    
    var sectionHeader: some View {
        ListSectionHeader(title: "Quick Actions")
    }
    
    var actions: some View {
        ForEach(quickActions) { quickAction in
            ProfileQuickActionItem(profileQuickAction: quickAction)
        }
        .listRowInsets(ListPadding.padding15)
    }
}



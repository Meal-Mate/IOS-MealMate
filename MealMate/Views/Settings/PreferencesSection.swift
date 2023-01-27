//
//  PreferencesSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct PreferencesSection: View {
    @State private var settingItems = settings
    
    var body: some View {
        Section(header: sectionHeader) {
            ForEach(settingItems.dropFirst(3).dropLast(2)) { settingItem in
                SettingItem(setting: settingItem)
            }
            .listRowInsets(ListPadding.padding15)
        }
    }
    
    var sectionHeader: some View {
        ListSectionHeader(title: "Preferences")
    }
}



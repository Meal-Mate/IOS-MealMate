//
//  GeneralSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct GeneralSection: View {
    @State private var settingItems = settings
    
    var body: some View {
        Section(header: sectionHeader) {
            ForEach(settingItems.dropLast(7)) { settingItem in
                SettingItem(setting: settingItem)
            }
            .listRowInsets(ListPadding.padding15)
        }
    }
    
    var sectionHeader: some View {
        ListSectionHeader(title: "General")
    }
}



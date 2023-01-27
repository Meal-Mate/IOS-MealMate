//
//  InputFieldSelection.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct InputFieldSelectionTitle: View {
    @Binding var selected: Int
    
    let title: String
    let labelText: String
    let icon: String
    let iconBackground: Color
    let selectionTitle: String
    let selectionItems: Int
    
    var body: some View {
        Section(header: Text(title)) {
            Picker(labelText, selection: $selected) {
                ForEach(0 ..< selectionItems) { selectionItem in
                    IconTextSelection(icon: icon, title: selectionTitle, color: iconBackground)
                        .tag(selectionItem)
                }
            }
        }
    }
}

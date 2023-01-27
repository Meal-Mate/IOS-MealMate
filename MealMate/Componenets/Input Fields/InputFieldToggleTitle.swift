//
//  InputFieldToggleTitle.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct InputFieldToggleTitle: View {
    @Binding var isON: Bool
    
    let title: String
    let labelText: String
    let color: Color
    
    var body: some View {
        Section(header: Text(title)) {
            Toggle(labelText, isOn: $isON)
                .toggleStyle(SwitchToggleStyle(tint: color))
        }
    }
}

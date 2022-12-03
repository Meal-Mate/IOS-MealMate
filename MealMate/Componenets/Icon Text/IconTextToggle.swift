//
//  IconTextToggle.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconTextToggle: View {
    let icon: String
    let iconBackground: Color
    let title: String
    let bodyText: String
    
    @State private var isOn = false
    
    var body: some View {
        Toggle(
            isOn:
                $isOn,
            label: {
                toggleLabel
            }
        )
        .toggleStyle(SwitchToggleStyle(tint: Colors.blue))
    }
    
    var toggleLabel: some View {
        HStack(spacing: 15) {
            IconBackground40px(icon: icon, iconBackground: iconBackground)
            textContent
        }
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .font(Font.subheadline.bold())
            
            Text(bodyText)
                .font(Font.caption.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
}

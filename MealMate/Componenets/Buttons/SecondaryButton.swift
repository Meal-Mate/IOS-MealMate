//
//  SecondaryButton.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct SecondaryButton: ButtonStyle {
    let buttonTextColor: Color
    let buttonBackground: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.footnote.weight(.bold))
            .textCase(.uppercase)
            .foregroundColor(buttonTextColor)
            .padding(.horizontal, 8)
            .padding(.vertical, 6)
            .background(buttonBackground)
            .clipShape(Capsule())
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

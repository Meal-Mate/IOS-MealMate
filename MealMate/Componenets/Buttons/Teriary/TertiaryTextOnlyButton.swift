//
//  TertiaryTextOnlyButton.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct TertiaryTextOnlyButton: ButtonStyle {
    let buttonFont: Font
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(buttonFont)
            .foregroundColor(Colors.blue)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}


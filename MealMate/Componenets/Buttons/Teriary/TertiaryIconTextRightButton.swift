//
//  TertiaryIconTextRightButton.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct TertiaryIconTextRightButton: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 6) {
            configuration.label
                .font(Font.subheadline.weight(.regular))
                .textCase(.none)
                .foregroundColor(Colors.blue)
            
            NavigationLinkIcon(color: Colors.blue)
        }
        .opacity(configuration.isPressed ? 0.5 : 1)
    }
}



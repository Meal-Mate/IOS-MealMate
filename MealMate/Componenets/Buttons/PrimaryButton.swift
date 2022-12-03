//
//  PrimaryButton.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct PrimaryButton: ButtonStyle {
    var textColor: Color?
    var background: Color?
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.headline.bold())
            .foregroundColor(textColor ?? Colors.primaryBackground)
            .frame(width: ScreenSize.screenWidth-32, height: 50)
            .background(background ?? Colors.orange)
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .opacity(configuration.isPressed ? 0.5 : 1)
            
    }
}

//
//  IconBackground48px.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconBackground48px: View {
    let icon: String
    var iconColor: Color?
    var iconBackground: Color?
    var isBackgroundGradient: Bool
    let gradientIndex: Int
    
    var body: some View {
        if isBackgroundGradient {
            iconSection
                .background(BackgroundGradients.gradients[gradientIndex])
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } else {
            iconSection
                .background(iconBackground)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
    
    var iconSection: some View {
        Image(systemName: icon)
            .font(Font.title3.weight(.semibold))
            .foregroundColor(iconColor ?? Colors.primaryBackground)
            .frame(width: 48, height: 48)
    }
}

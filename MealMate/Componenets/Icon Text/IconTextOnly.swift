//
//  IconTextOnly.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconTextOnly: View {
    let icon: String
    let iconBackground: Color
    var isBackgroundGradient: Bool?
    var gradientIndex: Int?
    let title: String
    let bodyText: String
    
    var body: some View {
        HStack(spacing: 15) {
            IconBackground48px(icon: icon, iconBackground: iconBackground, isBackgroundGradient: isBackgroundGradient ?? true, gradientIndex: gradientIndex ?? 0)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(Font.subheadline.bold())
                
                Text(bodyText)
                    .font(.footnote)
                    .foregroundColor(Colors.secondary)
            }
        }
    }
}

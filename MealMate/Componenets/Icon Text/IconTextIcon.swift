//
//  IconTextIcon.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconTextIcon: View {
    let icon: String
    var iconColor: Color?
    let iconBackground: Color
    var isBackgroundGradient: Bool?
    var gradientIndex: Int?
    let title: String
    let bodyText: String
    var doesHaveANavigationLink: Bool?
    
    var body: some View {
        HStack(spacing: 15) {
            IconBackground48px(icon: icon, iconColor: iconColor, iconBackground: iconBackground, isBackgroundGradient: isBackgroundGradient ?? true, gradientIndex: gradientIndex ?? 0)
            
            HStack(spacing: 0) {
                textContent
                Spacer(minLength: 15)
                
                if doesHaveANavigationLink == false {
                    NavigationLinkIcon()
                }
            }
            .frame(minHeight: 48, maxHeight: 58)
        }
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .font(Font.subheadline.bold())
            
            Text(bodyText)
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
}


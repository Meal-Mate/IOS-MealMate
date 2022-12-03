//
//  SmallIconText.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct SmallIconText: View {
    let icon: String
    let iconBackground: Color
    let title: String
    let bodyText: String
    
    var body: some View {
        HStack(spacing: 15) {
            IconBackground40px(icon: icon, iconBackground: iconBackground)
            textContent
            Spacer()
            
            NavigationLinkIcon()
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

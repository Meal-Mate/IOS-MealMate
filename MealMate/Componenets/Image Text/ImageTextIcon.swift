//
//  ImageTextIcon.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct ImageTextIcon: View {
    let image: String
    let title: String
    let bodyText: String
    
    var body: some View {
        HStack(spacing: 0) {
            Image(image)
                .padding(.trailing, 20)
            
            textContent
            Spacer()
            
            NavigationLinkIcon()
        }
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .font(Font.headline.bold())
            
            Text(bodyText)
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
        .padding(.trailing, 20)
    }
}

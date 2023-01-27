//
//  TextOnly.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct TextOnly: View {
    let title: String
    let information: String
    
    var body: some View {
        HStack(spacing: 0) {
            Text(title)
                .font(Font.headline.weight(.regular))
                .foregroundColor(Colors.secondary)
            Spacer()
            
            Text(information)
                .font(Font.headline.weight(.regular))
        }
    }
}

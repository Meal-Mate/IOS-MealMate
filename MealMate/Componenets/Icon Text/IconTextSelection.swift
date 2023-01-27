//
//  IconTextSelection.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconTextSelection: View {
    let icon: String
    let title: String
    let color: Color
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: icon)
                .font(Font.footnote.weight(.semibold))
                .foregroundColor(Colors.primaryBackground)
                .frame(width: 30, height: 30)
                .background(color)
                .clipShape(Circle())
            
            Text(title)
                .font(Font.subheadline.weight(.medium))
                .foregroundColor(Colors.primaryText)
        }
    }
}


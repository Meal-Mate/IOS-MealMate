//
//  IconBackground32px.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconBackground32px: View {
    let icon: String
    let background: Color
    
    var body: some View {
        Image(systemName: icon)
            .font(Font.subheadline.bold())
            .foregroundColor(Colors.primaryBackground)
            .frame(width: 32, height: 32)
            .background(background)
            .clipShape(Circle())
    }
}

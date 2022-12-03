//
//  IconBackground40x.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconBackground40px: View {
    let icon: String
    var iconColor: Color?
    let iconBackground: Color
    
    var body: some View {
        Image(systemName: icon)
            .font(Font.headline.weight(.semibold))
            .foregroundColor(iconColor ?? Colors.primaryBackground)
            .frame(width: 40, height: 40)
            .background(iconBackground)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

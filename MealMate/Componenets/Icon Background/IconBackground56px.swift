//
//  IconBackground56px.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconBackground56px: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(Font.title.weight(.semibold))
            .foregroundColor(Colors.primaryBackground)
            .frame(width: 56, height: 56)
            .background(Colors.primaryBackground25opacity)
            .clipShape(Circle())
    }
}

//
//  NavigationLinkIcon.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct NavigationLinkIcon: View {
    var color: Color?
    
    var body: some View {
        Image(systemName: Icons.chevronRight)
            .font(Font.footnote.weight(.semibold))
            .foregroundColor(color ?? Colors.tertiary)
    }
}


//
//  TextIcon.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct TextIcon: View {
    let title: String
    var textColor: Color?
    let fontSize: Font
    var doesHaveAButton: Bool?
    var selectedIcon: String?
    var notSelectedIcon: String?
    
    @State private var isSelected = false
    
    var body: some View {
        HStack(spacing: 15) {
            Text(title)
                .font(fontSize)
                .foregroundColor(textColor ?? .primary)
            Spacer()
            
            if doesHaveAButton ?? false {
                Image(systemName: (isSelected ? selectedIcon : notSelectedIcon) ?? "")
                    .font(Font.title2.weight(.regular))
                    .foregroundColor(Colors.blue)
                    .onTapGesture {
                        self.isSelected.toggle()
                    }
            } else {
                NavigationLinkIcon()
            }
        }
    }
}

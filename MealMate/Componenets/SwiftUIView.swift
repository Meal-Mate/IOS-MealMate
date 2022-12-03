//
//  SwiftUIView.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct AchievementCard: View {
    let icon: String
    let title: String
    let bodyText: String
    let backgroundColor: LinearGradient
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            IconBackground56px(icon: icon)
            bottomSection
        }
        .padding(16)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
    
    var bottomSection: some View {
        HStack(spacing: 20) {
            textContent
            Spacer()
            
            Button("Share") {
                //MARK: TODO here
            }
            .buttonStyle(SecondaryButton(buttonTextColor: Colors.blue, buttonBackground: Colors.primaryBackground))
        }
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(Font.title3.weight(.semibold))
                .foregroundColor(Colors.primaryBackground)
            
            Text(bodyText)
                .font(Font.subheadline.weight(.regular))
                .foregroundColor(Colors.primaryBackground)
        }
    }
}

//
//  Review.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct Review: View {
    let image: String
    let name: String
    let whenCompleted: String
    let date: String
    let numberOfStars: Int
    let title: String
    let bodyText: String
    var background: Color?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            user
            Rating(numberOfStars: numberOfStars)
            review
        }
        .padding(12)
        .background(background ?? Colors.quaternary)
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
    
    var user: some View {
        HStack(spacing: 15) {
            Image(image)
            userTextContent
        }
    }
    
    var userTextContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack(alignment: .top, spacing: 15) {
                Text(name)
                    .font(Font.subheadline.bold())
                Spacer()
                
                HStack(spacing: 6) {
                    Text(date)
                        .font(Font.caption.weight(.regular))
                        .foregroundColor(Colors.secondary)
                    
                    NavigationLinkIcon()
                }
            }
            
            Text(whenCompleted)
                .font(Font.caption.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
    
    var review: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .font(Font.subheadline.bold())
            
            Text(bodyText)
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
}


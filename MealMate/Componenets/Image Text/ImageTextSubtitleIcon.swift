//
//  ImageTextSubtitleIcon.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct ImageTextSubtitleIcon: View {
    let image: String
    let subtitle: String
    let title: String
    let bodyText: String
    var doesHaveANavigationLink: Bool?
    
    @State private var showCoursePreview = false
    
    var body: some View {
        HStack(spacing: 0) {
            Image(image)
                .padding(.trailing, 20)
            
            textContent
            
            NavigationLink(
                destination:
                    self,
                isActive:
                    $showCoursePreview
            ) {
                EmptyView()
            }
            
            Spacer()
            
            if doesHaveANavigationLink == false {
                NavigationLinkIcon()
            }
        }
        .onTapGesture {
            showCoursePreview.toggle()
        }
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(subtitle)
                .font(Font.caption.bold())
                .textCase(.uppercase)
                .foregroundColor(Colors.blue)
            
            Text(title)
                .font(Font.headline.bold())
            
            Text(bodyText)
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
        .padding(.trailing, 20)
    }
}

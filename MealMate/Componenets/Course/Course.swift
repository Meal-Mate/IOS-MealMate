//
//  Course.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct Course: View {
    let image: String
    let subtitle: String
    let title: String
    let bodyText: String
    
    @State private var showCoursePreview = false
    
    var body: some View {
        HStack(spacing: 20) {
            Image(image)
                .overlay(
                    NavigationLink(
                        destination:
                            self,
                        isActive:
                            $showCoursePreview
                    ) {
                        EmptyView()
                    }
                )
            
            textContent
            Spacer()
            
            NavigationLinkIcon()
        }
        .padding(.horizontal, 12)
        .frame(width: ScreenSize.screenWidth-32, height: 104)
        .background(Colors.quaternary)
        .clipShape(RoundedRectangle(cornerRadius: 14))
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
    }
}

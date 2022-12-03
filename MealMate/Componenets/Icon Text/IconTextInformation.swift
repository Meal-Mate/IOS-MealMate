//
//  IconTextInformation..swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct IconTextInformation: View {
    let icon: String
    let color: Color
    let text: String
    let subtitle: String
    let title: String
    let bodyText: String
    var doesHaveANavigationLink: Bool?
    let gradientIndex: Int
    
    @State private var showCourseCategory = false
    
    var body: some View {
        HStack(spacing: 0) {
            iconText
                .padding(.trailing, 20)
            
            textContent
            Spacer()
            
            if doesHaveANavigationLink == false {
                NavigationLinkIcon()
                
                NavigationLink(
                    destination:
                        self,
                    isActive:
                        $showCourseCategory
                ) {
                    EmptyView()
                }
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            showCourseCategory.toggle()
        }
    }
    
    var iconText: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                IconBackground32px(icon: icon, background: Colors.primaryBackground25opacity)
                
                Text(text)
                    .font(Font.subheadline.bold())
                    .foregroundColor(Colors.primaryBackground)
            }
            .padding(.leading, 10)
            
            Spacer()
        }
        .frame(width: 112, height: 88)
        .background(BackgroundGradients.gradients[gradientIndex])
        .clipShape(RoundedRectangle(cornerRadius: 14))
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

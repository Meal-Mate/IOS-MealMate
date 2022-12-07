//
//  CoursePreviewInstructor.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct CoursePreviewInstructor: View {
    let image: String
    let subtitle: String
    let title: String
    let bodyText: String
    let instructorImage: String
    let name: String
    let BIO: String
    let instructorBackground: Color
    let background: Color
    
    @State private var showCoursePreview = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Image(image)
                .resizable()
                .frame(width: ScreenSize.screenWidth-56)
                .overlay(
                    NavigationLink(
                        destination:
                            SearchView(),
                        isActive:
                            $showCoursePreview
                    ) {
                        EmptyView()
                    }
                )
            textContent
            
            Instructor(image: instructorImage, name: name, BIO: BIO, background: instructorBackground)
        }
        .padding(12)
        .background(background)
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
                .foregroundColor(Colors.orange)
            
            Text(title)
                .font(Font.headline.bold())
            
            Text(bodyText)
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
}

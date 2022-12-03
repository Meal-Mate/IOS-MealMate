//
//  CoursePreviewProgress.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct CoursePreviewProgress: View {
    let image: String
    let subtitle: String
    let title: String
    let bodyText: String
    let progressValue: CGFloat
    let completedLessons: String
    let percentage: String
    let background: Color
    
    @State private var showCourse = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Image(image)
                .resizable()
                .frame(width: ScreenSize.screenWidth-56)
            
            textContent
            progress
        }
        .padding(12)
        .background(background)
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .onTapGesture {
            showCourse.toggle()
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
        //MARK: Sets the minimum height of the section.
        .frame(minHeight: 73)
    }
    
    var progress: some View {
        VStack(spacing: 6) {
            LinearProgressBar(progress: progressValue)
            
            HStack(spacing: 0) {
                Text(completedLessons)
                    .font(Font.caption.weight(.regular))
                    .foregroundColor(Colors.secondary)
                Spacer()
                
                NavigationLink(
                    destination:
                        self,
                    isActive:
                        $showCourse
                ) {
                    EmptyView()
                }
                
                Text(percentage)
                    .font(Font.caption.bold())
                    .foregroundColor(Colors.blue)
            }
        }
        .padding(12)
        .frame(width: ScreenSize.screenWidth-56)
        .background(Colors.primaryBackgroundDarkModeSupport)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}


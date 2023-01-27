//
//  CourseDurationSection.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct RatingSection: View {
    @State private var courseDurationItems = courseDurationFilters
    
    var body: some View {
        VStack(spacing: 20) {
            sectionHeader
            filters
        }
    }
    
    var sectionHeader: some View {
        VStack(spacing: 15) {
            ListSectionHeader(title: "Rating")
                .frame(width: ScreenSize.screenWidth-32)
            
            ListDivider()
        }
    }
    
    var filters: some View {
        VStack(spacing: 20) {
            ForEach(courseDurationItems) { courseDurationItem in
                CourseDurationFilterItem(courseDuration: courseDurationItem)
                ListDivider()
            }
        }
    }
}

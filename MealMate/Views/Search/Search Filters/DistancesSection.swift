//
//  CourseCategorySection.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct DistancesSection: View {
    @State private var courseCategories = categoyrFilters
    
    var body: some View {
        VStack(spacing: 20) {
            sectionHeader
            filters
        }
    }
    
    var sectionHeader: some View {
        VStack(spacing: 15) {
            ListSectionHeader(title: "Distances")
                .frame(width: ScreenSize.screenWidth-32)
            
            ListDivider()
        }
    }
    
    var filters: some View {
        VStack(spacing: 20) {
            ForEach(courseCategories) { courseCategory in
                DistancesFilterItem(category: courseCategory)
                ListDivider()
            }
        }
    }
}

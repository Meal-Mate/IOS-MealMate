//
//  ProficiencySection.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct CategoriesSection: View {
    @State private var categoriesItems = categoriesFilter
    
    var body: some View {
        VStack(spacing: 20) {
            sectionHeader
            filters
        }
    }
    
    var sectionHeader: some View {
        VStack(spacing: 15) {
            ListSectionHeader(title: "Categories")
                .frame(width: ScreenSize.screenWidth-32)
            
            ListDivider()
        }
    }
    
    var filters: some View {
        VStack(spacing: 20) {
            ForEach(categoriesItems) { categoriesItem in
                CategoriesFilterItem(categories: categoriesItem)
                ListDivider()
            }
        }
    }
}

//
//  CategoryFilterItem.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct DistancesFilterItem: View {
    var category: DistancesFilter
    
    var body: some View {
        TextIcon(
            title:
                category.title,
            fontSize:
                Font.body.weight(.regular),
            doesHaveAButton:
                true,
            selectedIcon:
                Icons.checkmarkSelected,
            notSelectedIcon:
                Icons.checkmarkNotSelected
        )
        .frame(width: ScreenSize.screenWidth-32)
    }
}

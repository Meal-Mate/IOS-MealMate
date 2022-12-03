//
//  SearchByCategoryItem.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct SearchByCategoryItem: View {
    var searchByCategory: SearchByCategory
    
    let gradientIndex: Int
    
    var body: some View {
        IconTextIcon(
            icon:
                searchByCategory.icon,
            iconBackground:
                searchByCategory.iconBackground,
            isBackgroundGradient:
                true,
            gradientIndex:
                gradientIndex,
            title:
                searchByCategory.title,
            bodyText:
                searchByCategory.bodyText,
            doesHaveANavigationLink:
                false
        )
        .frame(width: ScreenSize.screenWidth-32)
    }
}

//
//  CourseDurationFilterItem.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct CourseDurationFilterItem: View {
    var courseDuration: CourseDurationFilter
    
    var body: some View {
        TextIcon(
            title:
                courseDuration.title,
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

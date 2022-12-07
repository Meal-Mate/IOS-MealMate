//
//  MyAchievementItem.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct MyAchievementItem: View {
    let gradientIndex: Int
    
    var myAchievement: MyAchievement
    
    var body: some View {
        IconTextIcon(
            icon:
                myAchievement.icon,
            iconBackground:
                myAchievement.iconBackground,
            gradientIndex:
                gradientIndex,
            title:
                myAchievement.title,
            bodyText:
                myAchievement.bodyText
        )
    }
}

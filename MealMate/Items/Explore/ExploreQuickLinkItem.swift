//
//  ExploreQuickLinkItem.swift
//  MealMate
//
//  Created by HASSEN on 3/12/2022.
//

import SwiftUI

struct ExploreQuickLinkItem: View {
    var exploreQuickLink: ExploreQuickLink
    
    var body: some View {
        TextIcon(
            title:
                exploreQuickLink.title,
            textColor:
                Colors.blue,
            fontSize:
                Font.body.weight(.regular)
        )
        .frame(width: ScreenSize.screenWidth-32)
    }
}


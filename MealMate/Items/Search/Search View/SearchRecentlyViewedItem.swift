//
//  SearchRecentlyViewedItem.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI
import Foundation

struct SearchRecentlyViewedItem: View {
    var recentlyViewed: RestaurantPostModel
  
    var body: some View {
        ImageTextButton(
            image:
                Images.searchRecentlyViewed1,
            name:
                recentlyViewed.name,
            address:
                recentlyViewed.address,
            buttonText: "",
            description: recentlyViewed.description
                    
        )
        .frame(width: ScreenSize.screenWidth-32)
        .onTapGesture {
            let defaults = UserDefaults.standard
            defaults.set(recentlyViewed.id,forKey: "id")
        }
    }
}

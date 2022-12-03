//
//  ExploreNowTrendingItem.swift
//  MealMate
//
//  Created by HASSEN on 3/12/2022.
//

import SwiftUI

struct ExploreNowTrendingItem: View {
    var exploreNowTrending: RestaurantPostModel
    
    var body: some View {
        CoursePreviewInstructor(
            image:
                Images.searchRecentlyViewed1,
            subtitle:
               "",
            title:
                exploreNowTrending.name,
            bodyText:
                exploreNowTrending.description,
            instructorImage:
                Images.searchRecentlyViewed1,
            name:
                exploreNowTrending.address,
            BIO:
                exploreNowTrending.phone,
            buttonText:
                "Start",
            instructorBackground:
                Colors.primaryBackgroundDarkModeSupport,
            background:
                Colors.quaternary
        )
        .frame(width: ScreenSize.screenWidth-32)
    }
}



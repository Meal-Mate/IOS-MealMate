//
//  ExploreNowTrendingItem.swift
//  MealMate
//
//  Created by HASSEN on 3/12/2022.
//

import SwiftUI

struct ExploreNowTrendingItem: View {
    var exploreNowTrending: ExploreNowTrending
    
    var body: some View {
        CoursePreviewInstructor(
            image:
                exploreNowTrending.image,
            subtitle:
                exploreNowTrending.subtitle,
            title:
                exploreNowTrending.title,
            bodyText:
                exploreNowTrending.bodyText,
            instructorImage:
                exploreNowTrending.instructorImage,
            name:
                exploreNowTrending.instructorName,
            BIO:
                exploreNowTrending.instructorBIO,
            instructorBackground:
                Colors.primaryBackgroundDarkModeSupport,
            background:
                Colors.quaternary
        )
        .frame(width: ScreenSize.screenWidth-32)
    }
}


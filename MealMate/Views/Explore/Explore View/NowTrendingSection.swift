//
//  NowTrendingSection.swift
//  MealMate
//
//  Created by HASSEN on 3/12/2022.
//

import SwiftUI
import Pages

struct NowTrendingSection: View {

    @State var index: Int = 0
    @State private var nowTrendingCourses = exploreNowTrendingCourses
    @State private var currentCourse = 0
    
    var body: some View {
        VStack(spacing: 20) {
            listSectionHeader
            courses

        }
    }
    
    var listSectionHeader: some View {
        VStack(spacing: 15) {
            Divider()
            ListSectionHeader(title: "Now Trending", doesHaveAButton: false)
        }
        .frame(width: ScreenSize.screenWidth-32)
    }
    
    var courses: some View {
        Pages(currentPage: $currentCourse, hasControl: false) {
            ExploreNowTrendingItem(exploreNowTrending: nowTrendingCourses[0])
            ExploreNowTrendingItem(exploreNowTrending: nowTrendingCourses[1])
           ExploreNowTrendingItem(exploreNowTrending: nowTrendingCourses[2])
        }
        .frame(minHeight: 340)
    }
 
}

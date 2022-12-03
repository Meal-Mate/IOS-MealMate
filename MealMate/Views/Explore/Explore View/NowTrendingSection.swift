//
//  NowTrendingSection.swift
//  MealMate
//
//  Created by HASSEN on 3/12/2022.
//

import SwiftUI
import Pages

struct NowTrendingSection: View {
    @State private var viewModel = RestaurantViewModel()
    @State var index: Int = 0
    
    var body: some View {
        VStack(spacing: 20) {
            listSectionHeader
            courses
        }
    }
    
    var listSectionHeader: some View {
        VStack(spacing: 15) {
            Divider()
            ListSectionHeader(title: "Now Trending", doesHaveAButton: true, buttonText: "See All")
        }
        .frame(width: ScreenSize.screenWidth-32)
    }
    
    /* var courses: some View {
        ModelPages(viewModel.restaurants,currentPage: $currentCourse) {pageIndex,restaurant in
            List(viewModel.restaurants, id: \.id ) { restaurant in
                ExploreNowTrendingItem(exploreNowTrending: restaurant)
            }.onAppear(perform: viewModel.getAllRestrauants)
            Text("aaaa")
            Text(viewModel.restaurant.description)
            //ExploreNowTrendingItem(viewModel: exploreNowTrending[0])
          // ExploreNowTrendingItem(viewModel: exploreNowTrending[1])
          //  ExploreNowTrendingItem(viewModel: exploreNowTrending[2])
        }
        .frame(width: 450, height: 500 )
                            
           
           
       }
     
    }
     */
    var courses: some View {
        Pages(currentPage: $index, hasControl: false) {
            List(viewModel.restaurants, id: \.id ) { restaurant in
                ExploreNowTrendingItem(exploreNowTrending: restaurant)
                
            }.onAppear(perform: viewModel.getAllRestrauants)
        }
        .frame(minHeight: 340)
    }
}

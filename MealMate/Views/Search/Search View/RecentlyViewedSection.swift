//
//  RecentlyViewedSection.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct RecentlyViewedSection: View {
   
    @ObservedObject var viewModel = RestaurantViewModel()
    var body: some View {
        VStack(spacing: 20) {
            ListSectionHeader(title: "Search Results",doesHaveAButton: true, buttonText: "Add Restaurant")
                .frame(width: ScreenSize.screenWidth-32)
            restaurants
        }
    }

    var restaurants: some View {
       
        VStack(spacing: 15){
            
                List(viewModel.restaurants, id: \.id ) { restaurant in
                    SearchRecentlyViewedItem(recentlyViewed: restaurant)
                    
                }.onAppear(perform: viewModel.getAllRestrauants)
              
            
        }.frame(width: 450, height: 500 )
        
        
    }
}



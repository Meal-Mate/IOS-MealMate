//
//  SearchView.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct SearchView: View {
    static let tag = "Search"
    
    @State private var searchText = ""
    
   

    var body: some View {
       
            ScrollView{
                VStack(alignment: .leading, spacing: 30) {
                    RecentlyViewedSection()
                }
                .padding(.top, 15)
            }
           
        .addNavigationBarItems(title: "Search", icon: Icons.filter, selectedView: SelectedView.filters)
        .overlay(
            SearchBarView(
                searchText:
                    $searchText
            )
            .frame(width: 0, height: 0)
        )
    }
}

//
//  PropositionView.swift
//  MealMate
//
//  Created by HASSEN on 28/11/2022.
//

import SwiftUI

struct PropositionView: View {
    static let tag = "Propostion"
    
    @State private var searchText = ""
    
   

    var body: some View {
       
            ScrollView{
                VStack(alignment: .leading, spacing: 30) {
                    PropositionsViewedSection()
                }
                .padding(.top, 15)
            }
           
        .addNavigationBarItems(title: "Propostion", icon: Icons.filter, selectedView: SelectedView.filters)
        .overlay(
            SearchBarView(
                searchText:
                    $searchText
            )
            .frame(width: 0, height: 0)
        )
    }
}

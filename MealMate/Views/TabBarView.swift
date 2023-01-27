//
//  SwiftUIView.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct TabBarView: View {
    @AppStorage("didLaunchBefore") var didLaunchBefore: Bool?
    @AppStorage("lastSelectedView") var lastSelectedView = ""
    @State private var showHome = false
    var body: some View {
        TabView(selection: $lastSelectedView) {
            NavigationView {
           ExploreView(detailView: RestaurantPostModel(id: "String", name: "String", address: "", email: "", phone: "", description: ""))
                    .onAppear {
                        didLaunchBefore = true
                    }
            }
            .tabItem {
                Label("Explore", systemImage: Icons.star)
            }
            .tag(SearchView.tag)
            
            NavigationView {
                PropositionView()
            }
            .tabItem {
                Label("Match", systemImage: Icons.people1)
            }
            .tag(SearchView.tag)
            
            NavigationView {
                SearchView()
            }
            .ignoresSafeArea()
            .tabItem {
                Label("Search", systemImage: Icons.search)
            }
            .tag(SearchView.tag)
            
            NavigationView {
                ProfileView(showHome: $showHome).environmentObject(LoginViewModel())
            }
            .tabItem {
                Label("Profile", systemImage: Icons.user)
            }
            .tag(SearchView.tag)
        }
    }
}



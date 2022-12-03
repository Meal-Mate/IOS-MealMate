//
//  ContentView.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("didLaunchBefore") var didLaunchBefore: Bool?
    
    var body: some View {
        Group {
            if didLaunchBefore ?? true {
                
                //RestaurantView()
                TabBarView()
            } else {
                OnboardingView()
            }
        }
    }
}
	

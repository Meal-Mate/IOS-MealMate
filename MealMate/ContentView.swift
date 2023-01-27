//
//  ContentView.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    @AppStorage("didLaunchBefore") var didLaunchBefore: Bool?
    @Binding var showHome: Bool

    var body: some View {
        Group {
            if didLaunchBefore ?? false {
                OnboardingView()
            } else {
                LoginView(showHome: $showHome )
            }
        }
    }
}


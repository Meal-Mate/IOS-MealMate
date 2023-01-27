//
//  LaunchScreen.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var showNextView = false
    @State private var showHome = false
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.vertical)
            Image(Images.launch)
   
            
            if showNextView {
                ContentView(showHome: $showHome)
                
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                showNextView = true
            }
        }
    }
}

//
//  MealMateApp.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

@main
struct MealMateApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchScreen().environmentObject(RestaurantViewModel())
        }
    }
    
    
 
}

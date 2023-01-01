//
//  MealMateApp.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI
import GooglePlaces
import GoogleMaps

@main
struct MealMateApp: App {
    init() {
        GMSPlacesClient.provideAPIKey(APIKeys.GoogleMapsKey)
        GMSServices.provideAPIKey(APIKeys.GoogleMapsKey)
    }
    var body: some Scene {
        WindowGroup {
            LaunchScreen().environmentObject(RestaurantViewModel())
       
            
        }
    }
}
struct APIKeys {
    static var GoogleMapsKey: String = "AIzaSyCVbH_mZjdHklbFnnKCDJjM4hZmR57PYQ4"
}

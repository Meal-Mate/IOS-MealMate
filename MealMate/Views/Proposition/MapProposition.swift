//
//  MapProposition.swift
//  MealMate
//
//  Created by Yoteqi on 31/12/2022.
//

import SwiftUI
import GoogleMaps

struct MapProposition: View {
    @ObservedObject var locationManager = LocationManager()
    @ObservedObject var list = MapsViewModel()
    @State var RestaurantName: String
    @State private var selectedMarker: GMSMarker?

    var body: some View {
        Group {
       
            
            VStack(spacing: 0) {
                
                if (selectedMarker != nil){
                    
                        AddProposition(mates: "", propostiondDate: "", RestaurantName: "", selectedMarker: $selectedMarker)
                    
                }else{
                    VStack(spacing: 0) {
                    GoogleMapsView(restaurants: list.restaurants,selectedMarker: self.$selectedMarker,RestaurantName: self.RestaurantName)
                    }.edgesIgnoringSafeArea(.vertical)
                }
                
            }
        }.onAppear(perform: list.getAllMapRestaurants)
            
    }
}



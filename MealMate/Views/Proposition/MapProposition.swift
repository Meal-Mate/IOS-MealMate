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
    @State var selectedMarker: GMSMarker?
    var body: some View {
        Group {
       
            
            VStack(spacing: 0) {
                
                if (selectedMarker != nil){
                    AddProposition(owner: "", address: "", mates: "", date: ""     )
                    
                }else{
                    GoogleMapsView(restaurants: list.restaurants,selectedMarker: self.$selectedMarker)
                }
                
            }
        }.onAppear(perform: list.getAllMapRestaurants)
            .edgesIgnoringSafeArea(.vertical)
    }
}



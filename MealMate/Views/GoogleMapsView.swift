//
//  aps.swift
//  MealMate
//
//  Created by Yoteqi on 31/12/2022.
//

import SwiftUI

import GooglePlaces
import GoogleMaps


struct GoogleMapsView: UIViewRepresentable {
    private let zoom: Float = 15.0
    var restaurants: [mapsModel]
    let gmsMapView = GMSMapView(frame: .zero)
    @Binding var selectedMarker: GMSMarker?
    @State var RestaurantName: String
    @ObservedObject var locationManager = LocationManager()
    
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.longitude, zoom: zoom)
        gmsMapView.isMyLocationEnabled = true
        gmsMapView.settings.compassButton = true
        gmsMapView.settings.myLocationButton = true
        gmsMapView.camera = camera
        gmsMapView.delegate = context.coordinator
        gmsMapView.setMinZoom(10, maxZoom: 18)
        
        return gmsMapView
    }
    
    func updateUIView(_ mapView: GMSMapView, context: Context) {
        
        for pin in restaurants {
            let marker = GMSMarker()
            marker.position =  CLLocationCoordinate2D(latitude:pin.lat, longitude: pin.lng)
            marker.title = pin.title
            marker.map = mapView
            
            
        }
        mapView.animate(toLocation: CLLocationCoordinate2D(latitude: locationManager.latitude, longitude: locationManager.longitude))
    }
    func makeCoordinator() -> Coordinator {
        return Coordinator(
    RestaurantName: $RestaurantName,
    owner: self,
    selectedMarker: $selectedMarker)
    }
    
    class Coordinator: NSObject, GMSMapViewDelegate, ObservableObject {
        
        let owner: GoogleMapsView       // access to owner view members,
        @Binding var RestaurantName: String
        @Binding var selectedMarker: GMSMarker?
        
        init(
            RestaurantName: Binding<String>,
            owner: GoogleMapsView,
            selectedMarker: Binding<GMSMarker?>
            
            
        ) {
            _RestaurantName = RestaurantName

            self.owner = owner
            
            _selectedMarker = selectedMarker
            
            
        }

    

        func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
            
            owner.selectedMarker = marker
            print("You tapped at \(marker.position), \(String(describing: marker.title))")
            self.selectedMarker = marker
            RestaurantName = marker.title!
            print("zz",RestaurantName)
            
            return true
            
        }
        
       
        
    }
    
}

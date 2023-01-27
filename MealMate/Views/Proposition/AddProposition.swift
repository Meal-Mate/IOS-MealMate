//
//  Proposition.swift
//  MealMate
//
//  Created by HASSEN on 27/11/2022.
//

import SwiftUI
import GoogleMaps


struct AddProposition: View {
    @ObservedObject var viewModel = PropositionViewModel()
    @Environment (\.presentationMode) var present
  

    @State var mates: String
    @State var propostiondDate: String
    @State var RestaurantName: String
    @Binding var selectedMarker: GMSMarker?
    @ObservedObject var list = MapsViewModel()

    @State private var selectedWorkAvailability = 0
    @State private var workAvailabilityItems = ["Full-Time"]
    
    @State private var isEnabled = false
    
    
    var body: some View {
        Form {
            matesSection
            dateSection
            restaurantSection
            workAvailabilitySection
            privacySection


        }  .navigationBarTitle("Add Proposition", displayMode: .inline)
            .navigationBarItems(
                trailing:
               doneButton
         
        )

        
     
    }
    

    
    var matesSection: some View {
        
        InputFieldTitle(inputText: $mates, title: "Proposition mates", placeholderText: "Proposition mates")
    }
    var dateSection: some View {
       InputFieldTitle(inputText: $propostiondDate, title: "Proposition date", placeholderText: "Proposition date")
    }
    var restaurantSection: some View {
       Text(selectedMarker?.title ?? "")
    }


    
  //  var interestsSection: some View {
    //    InputFieldChipsTitle(title: "Interests", chipText: "interests")
  //  }
    
    var workAvailabilitySection: some View {
        InputFieldSelectionTitle(selected: $selectedWorkAvailability, title: "Select Proposition", labelText: "Select Proposition", icon: Icons.clock, iconBackground: Colors.blue, selectionTitle: self.workAvailabilityItems[selectedWorkAvailability], selectionItems: workAvailabilityItems.count)
    }
    
    var privacySection: some View {
        InputFieldToggleTitle(isON: $isEnabled, title: "Privacy", labelText: "Set public", color: Colors.blue)
    }
    
    var doneButton: some View {
        Button(action: {
            
                let parameters: [String: Any] = [ "mates": mates, "propostiondDate": propostiondDate, "restaurantName": selectedMarker?.title ?? ""]
                viewModel.addProposition(parameters: parameters)
                
           
        }, label: {
            Text("Add Proposition")
        })
    }
}



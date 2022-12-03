//
//  InputSection.swift
//  MealMate
//
//  Created by HASSEN on 23/11/2022.
//

import SwiftUI
struct RestaurantView: View {
    @ObservedObject var viewModel = RestaurantViewModel()
    @Environment (\.presentationMode) var present
    
    @State  var name: String
    @State  var address: String
    @State  var phone: String
    @State  var email: String
    @State  var description: String
    
    @State private var selectedWorkAvailability = 0
    @State private var workAvailabilityItems = ["Full-Time"]
    
    @State private var isEnabled = false
    
    
    var body: some View {
        Form {
            nameSection
            emailSection
            addressSection
            phoneSection
            descSection
            workAvailabilitySection
            privacySection
        }  .navigationBarTitle("Add Restaurant", displayMode: .inline)
            .navigationBarItems(
                trailing:
                    doneButton
            )
    }
    
    var nameSection: some View {
        InputFieldTitle(inputText: $name, title: "Restaurant Name", placeholderText: "Restaurant Name")
    }
    
    var addressSection: some View {
        InputFieldTitle(inputText: $address, title: "Restaurant Address", placeholderText: "Restaurant Address")
    }
    var emailSection: some View {
        InputFieldTitle(inputText: $email, title: "Restaurant Email", placeholderText: "Restaurant Email")
    }
    var phoneSection: some View {
        InputFieldTitle(inputText: $phone, title: "Restaurant Phone", placeholderText: "Restaurant phone")
    }
    var descSection: some View {
        bigInput(inputText: $description, title: "Restaurant Description", placeholderText: "Restaurant Description")
    }
    
  //  var interestsSection: some View {
    //    InputFieldChipsTitle(title: "Interests", chipText: "interests")
  //  }
    
    var workAvailabilitySection: some View {
        InputFieldSelectionTitle(selected: $selectedWorkAvailability, title: "Work Availability", labelText: "Select availability", icon: Icons.clock, iconBackground: Colors.blue, selectionTitle: self.workAvailabilityItems[selectedWorkAvailability], selectionItems: workAvailabilityItems.count)
    }
    
    var privacySection: some View {
        InputFieldToggleTitle(isON: $isEnabled, title: "Privacy", labelText: "Set public", color: Colors.blue)
    }
    
    var doneButton: some View {
        Button(action: {
            if name != "" && email != "" && phone != "" && address != "" && description != "" {
                let parameters: [String: Any] = ["name": name, "address": address, "email": email, "phone": phone,"description":description]
                viewModel.addRestrauants(parameters: parameters)
               
                
            } else {
                
            }
        }, label: {
            Text("Add restaurant")
        })
    }
    
}

//
//  Proposition.swift
//  MealMate
//
//  Created by HASSEN on 27/11/2022.
//

import SwiftUI

struct AddProposition: View {
    @ObservedObject var viewModel = PropositionViewModel()
    @Environment (\.presentationMode) var present
    
    @State  var owner: String
    @State  var address: String
    @State  var mates: String
    @State  var date: String
    
    @State private var selectedWorkAvailability = 0
    @State private var workAvailabilityItems = ["Full-Time"]
    
    @State private var isEnabled = false
    
    
    var body: some View {
        Form {
            ownerSection
            matesSection
            dateSection
            workAvailabilitySection
            privacySection
            restaurantSection
        }  .navigationBarTitle("Add Proposition", displayMode: .inline)
            .navigationBarItems(
                trailing:
                    doneButton
            )
    }
    
    var ownerSection: some View {
        InputFieldTitle(inputText: $owner, title: "Proposition Owner", placeholderText: "Proposition Owner")
    }
    
    var matesSection: some View {
        InputFieldTitle(inputText: $mates, title: "Proposition mates", placeholderText: "Proposition mates")
    }
    var dateSection: some View {
    //InputFieldDatePickerTitle(date: $date, title: "Date and Time", labelText: "Select Date")
       InputFieldTitle(inputText: $date, title: "Proposition date", placeholderText: "Proposition date")
    }
    var restaurantSection: some View {
        InputFieldTitle(inputText: $address, title: "Proposition address", placeholderText: "Proposition address")
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
            if owner != "" && mates != "" && date != "" && address != ""  {
                let parameters: [String: Any] = ["owner": owner, "mates": mates, "date": date, "address": address]
                viewModel.addProposition(parameters: parameters)
               
                
            } else {
                
            }
        }, label: {
            Text("Add Proposition")
        })
    }
}



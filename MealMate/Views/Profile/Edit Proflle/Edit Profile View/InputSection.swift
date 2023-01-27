//
//  InputSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct InputSection: View {
    @State private var name = ""
    @State private var BIO = ""
    
    @State private var selectedWorkAvailability = 0
    @State private var workAvailabilityItems = ["Full-Time"]
    
    @State private var isEnabled = false
    
    @State private var selectedCertificate = 0
    
    var body: some View {
        nameSection
        BIOSection
        interestsSection
        workAvailabilitySection
        privacySection
    }
    
    var nameSection: some View {
        InputFieldTitle(inputText: $name, title: "Full Name", placeholderText: "Full Name")
    }
    
    var BIOSection: some View {
        InputFieldTitle(inputText: $BIO, title: "BIO", placeholderText: "BIO")
    }
    
    var interestsSection: some View {
        InputFieldChipsTitle(title: "Interests", chipText: "interests")
    }
    
    var workAvailabilitySection: some View {
        InputFieldSelectionTitle(selected: $selectedWorkAvailability, title: "Work Availability", labelText: "Select availability", icon: Icons.clock, iconBackground: Colors.blue, selectionTitle: self.workAvailabilityItems[selectedWorkAvailability], selectionItems: workAvailabilityItems.count)
    }
    
    var privacySection: some View {
        InputFieldToggleTitle(isON: $isEnabled, title: "Privacy", labelText: "Anyone can contact me", color: Colors.blue)
    }
    
}



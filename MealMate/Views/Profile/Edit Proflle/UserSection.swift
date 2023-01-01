//
//  UserSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI
let defaults = UserDefaults.standard
let username = defaults.value(forKey: "username") as? String
struct UserSection: View {
    
    var body: some View {
        Section(header: sectionHeader) {
            NavigationLink(
                destination:
                    EditProfileView()
            ) {
                HStack(spacing: 15) {
                    Image(Images.profileProfile)
                    textContent
                }
            }
            .listRowInsets(ListPadding.padding12)
        }
    }
    
    var sectionHeader: some View {
        ListSectionHeader(title: "Current User", doesHaveAButton: false)
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(username!)
                .font(Font.subheadline.bold())
            
            Text("Just trying new food everywhere")
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
}


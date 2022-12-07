//
//  ProfileImageSection.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct ProfileImageSection: View {
    var body: some View {
        Section(header: Text("Profile Image")) {
            HStack(spacing: 15) {
                Image(Images.editProfileProfile)
                textContent
                Spacer()
                
                Button("Browse") {
                    //MARK: TODO here
                }
                .buttonStyle(SecondaryButton(buttonTextColor: Colors.blue, buttonBackground: Colors.quaternary))
            }
            .listRowInsets(ListPadding.padding12)
        }
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Edit Image")
                .font(Font.subheadline.bold())
            
            Text("Browse your photos.")
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
}



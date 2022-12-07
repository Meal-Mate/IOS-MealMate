//
//  EditProfileView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct EditProfileView: View {
    @Environment (\.presentationMode) var present
    
    var body: some View {
        Form {
            ProfileImageSection()
            InputSection()
        }
        .navigationBarTitle("Edit Profile", displayMode: .inline)
        .navigationBarItems(
            trailing:
                doneButton
        )
    }
    
    var doneButton: some View {
        Button("Done") {
            hapticFeedback(feedbackType: .success)
            present.wrappedValue.dismiss()
        }
        .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.headline.bold()))
    }
}



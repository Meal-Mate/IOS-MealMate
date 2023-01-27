//
//  SettingsView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct SettingsView: View {
    @Environment (\.presentationMode) var present
    
    var body: some View {
        NavigationView {
            List {
                GeneralSection()
                PreferencesSection()
                OtherSection()
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Settings", displayMode: .inline)
            .navigationBarItems(
                leading:
                    cancelButton,
                trailing:
                    doneButton
            )
        }
    }
    
    var cancelButton: some View {
        Button("Cancel") {
            present.wrappedValue.dismiss()
        }
        .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.body.weight(.regular)))
    }
    
    var doneButton: some View {
        Button("Done") {
            hapticFeedback(feedbackType: .success)
            present.wrappedValue.dismiss()
        }
        .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.headline.bold()))
    }
    
    
}

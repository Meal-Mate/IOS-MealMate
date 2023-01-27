//
//  SearchFiltersView.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct SearchFiltersView: View {
    @Environment (\.presentationMode) var present
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    CategoriesSection()
                    DistancesSection()
                    RatingSection()
                }
                .padding(.top, 30)
            }
            .navigationBarTitle("Search Filters", displayMode: .inline)
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
        .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.body.bold()))
    }
}


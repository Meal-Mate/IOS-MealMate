//
//  InputFieldTitle.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct InputFieldTitle: View {
    @Binding var inputText: String
    
    let title: String
    let placeholderText: String
    
    var body: some View {
        Section(header: Text(title)) {
            TextField(placeholderText, text: $inputText)
        }
    }
}

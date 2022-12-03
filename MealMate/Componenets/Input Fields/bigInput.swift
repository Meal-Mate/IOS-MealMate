//
//  bigInput.swift
//  MealMate
//
//  Created by HASSEN on 27/11/2022.
//

import SwiftUI


import SwiftUI

struct bigInput: View {
    @Binding var inputText: String
    
    let title: String
    let placeholderText: String
    
    var body: some View {
        Section(header: Text(title)) {
            TextField(placeholderText, text: $inputText,axis: .vertical)
                .lineLimit(3, reservesSpace: true)
                
        }
    }
}


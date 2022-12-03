//
//  InputFieldNormal.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct InputFieldNormal: View {
    @Binding var inputText: String
    
    let placeholder: String
    var isPassword: Bool?
    
    var body: some View {
        
        Group {
            if isPassword ?? false {
                SecureField(placeholder, text: $inputText)
            } else {
                TextField(placeholder, text: $inputText)
            }
        }
        .padding(.leading, 16)
        .frame(width: ScreenSize.screenWidth-32, height: 50)
        .background(Colors.quaternary)
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

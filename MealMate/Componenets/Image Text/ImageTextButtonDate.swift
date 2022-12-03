//
//  ImageTextButtonDate.swift
//  MealMate
//
//  Created by HASSEN on 28/11/2022.
//

import SwiftUI

import SwiftUI
import Foundation

struct ImageTextButtonDate: View {
    
    let image: String
    let name: String
    let address: String
    let buttonText: String

    
    var body: some View  {
        HStack(spacing: 0) {
            Image(image)
                .padding(.trailing, 15)
            
            textContent
            Spacer()
            button
        }
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(name)
                .font(Font.subheadline.bold())
            
            Text(address)
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
    
    var button: some View {
        NavigationLink(
            destination:
               OnboardingView()
        ) {
            Text(buttonText)
        }
        .buttonStyle(SecondaryButton(buttonTextColor: Colors.orange, buttonBackground: Colors.quaternary))
        
    }
    
   

 

}


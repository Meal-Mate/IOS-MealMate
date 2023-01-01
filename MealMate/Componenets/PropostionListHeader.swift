//
//  PropostionListHeader.swift
//  MealMate
//
//  Created by HASSEN on 28/11/2022.
//

import SwiftUI

struct PropostionListHeader: View {
    let title: String
    var doesHaveAButton: Bool?
    var buttonText: String?

    
    var body: some View {
        HStack(spacing: 0) {
            Text(title)
                .font(Font.title3.weight(.semibold))
                .textCase(.none)
            
            Spacer()
            
            if doesHaveAButton ?? false {
                button
            }
        }
        
    }
    var button: some View {
        NavigationLink(
            destination:
                MapProposition()
        ) {
            Text(buttonText ?? "")
        }
        .buttonStyle(SecondaryButton(buttonTextColor: Colors.orange, buttonBackground: Colors.quaternary))
        
    }
}

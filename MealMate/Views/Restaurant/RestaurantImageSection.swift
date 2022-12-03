//
//  RestaurantImageSection.swift
//  MealMate
//
//  Created by HASSEN on 25/11/2022.
//

import SwiftUI

struct RestaurantImageSection: View {
    var body: some View {
        Image(Images.restaurantI)
            .resizable()
            .overlay(followButton)
    }
    
    var followButton: some View {
        VStack(spacing: 0) {
            Spacer()
            
            HStack(spacing: 0) {
                Spacer()
                
                Button("Get Location") {
                    //MARK: TODO here
                }
                .buttonStyle(SecondaryButton(buttonTextColor: Colors.primaryBackground, buttonBackground: Colors.orange))
            }
        }
        .padding([.trailing, .bottom], 16)
    }
}



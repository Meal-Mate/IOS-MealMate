//
//  ImageTextButton.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI	
import Foundation

struct ImageTextButton: View {
    
    let image: String
    let name: String
    let address: String
    let buttonText: String
    let description: String

    
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
                RestaurantDetailView(detailView: RestaurantPostModel(id: "", name: name, address: address, email: "", phone: "", description: ""))
        ) {
            Text(buttonText)
        }
        .buttonStyle(SecondaryButton(buttonTextColor: Colors.orange, buttonBackground: Colors.quaternary))
        
    }
    
   

 

}

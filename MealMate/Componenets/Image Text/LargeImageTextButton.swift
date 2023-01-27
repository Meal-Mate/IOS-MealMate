//
//  SwiftUIView.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct LargeImageTextButton: View {
    let image: String
    let subtitle: String
    let title: String
    let bodyText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(image)
                .resizable()
                .frame(width: ScreenSize.screenWidth-32, height: ScreenSize.screenHeight/4.8)
            
            textButton
        }
    }
    
    var textButton: some View {
        HStack(spacing: 20) {
            textContent
            Spacer()
            
            NavigationLink(
                destination:
                    self
            ) {
                Text("Start")
            }
            .buttonStyle(SecondaryButton(buttonTextColor: Colors.blue, buttonBackground: Colors.quaternary))
        }
    }
    
    var textContent: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(subtitle)
                .font(Font.caption.bold())
                .textCase(.uppercase)
                .foregroundColor(Colors.blue)
            
            Text(title)
                .font(Font.headline.bold())
            
            Text(bodyText)
                .font(Font.footnote.weight(.regular))
                .foregroundColor(Colors.secondary)
        }
    }
}

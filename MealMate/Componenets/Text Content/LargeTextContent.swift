//
//  LargeTextContent.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct LargeTextContent: View {
    let title: String
    let bodyText: String
    
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(Font.title.bold())
                    .padding(.bottom, 4)
                
                Text(bodyText)
                    .font(.body)
                    .foregroundColor(Colors.secondary)
            }
            Spacer()
        }
        .frame(width: ScreenSize.screenWidth-32)
    }
}


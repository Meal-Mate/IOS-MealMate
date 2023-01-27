//
//  termsAndConditions.swift
//  MealMate
//
//  Created by HASSEN on 3/1/2023.
//

import SwiftUI

struct termsAndConditions: View {
    var body: some View {
        ScrollView{
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("terms and conditions")
                        .font(Font.title.bold())
                        .padding(.bottom, 4)
                    
                    Text("The user must be at least 18 years old to use the app.")
                        .font(.body)
                        .foregroundColor(Colors.secondary)
                    Text("The user is responsible for their own safety and well-being when using the app and visiting restaurants.")
                        .font(.body)
                        .foregroundColor(Colors.secondary)
                    Text("The app is for personal use only, and the user is not allowed to use it for commercial purposes.")
                        .font(.body)
                        .foregroundColor(Colors.secondary)
                    Text("The user must not use the app to engage in any unlawful, fraudulent, or harmful activities.")
                        .font(.body)
                        .foregroundColor(Colors.secondary)
                    Text("The user must not use the app to transmit any viruses, malware, or other harmful software.")
                        .font(.body)
                        .foregroundColor(Colors.secondary)
                    Text("The user must not use the app to collect personal information about other users or restaurants without their consent.")
                        .font(.body)
                        .foregroundColor(Colors.secondary)
                }
                Spacer()
            }
            .frame(width: ScreenSize.screenWidth-32)
            
        }
    }
}


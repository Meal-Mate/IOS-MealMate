//
//  LoginButtons.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct LoginButtons: View {
    @Binding var showHome: Bool
    @StateObject private var loginVM = LoginViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Button("Login") {
                loginVM.login()
            }
            .buttonStyle(PrimaryButton())
            
            NavigationLink(
                destination:
                    ExploreView(detailView: RestaurantPostModel(id: "", name: "", address: "", email: "", phone: "", description: ""))
            ) {
                Text("Sign Up")
            }
            .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.headline.bold()))
        }
        .padding(.bottom, 15)
    }
}

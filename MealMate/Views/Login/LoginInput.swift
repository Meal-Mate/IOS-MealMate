//
//  LoginInput.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//
import SwiftUI

struct LoginInput: View {
    @StateObject private var loginVM = LoginViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            InputFieldNormal(inputText: $loginVM.email, placeholder: "Email Address")
                .autocapitalization(.none)
            
            InputFieldNormal(inputText: $loginVM.password, placeholder: "Password", isPassword: true)
        }
    }
}

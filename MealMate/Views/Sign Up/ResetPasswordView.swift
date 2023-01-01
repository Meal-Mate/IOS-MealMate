//
//  ResetPasswordView.swift
//  MealMate
//
//  Created by HASSEN on 12/12/2022.
//

import SwiftUI

struct ResetPasswordView: View {
    @StateObject private var loginVM = SignUpViewModel()
    @State  var password : String
    @State  var confirmPassword : String
    @Binding var showHome: Bool
    @State var showingAlert = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            VStack(){
                Image(Images.loginimage)
                    .resizable()
                    .frame(width: ScreenSize.screenWidth-32, height: ScreenSize.screenHeight/3.3)
                    .padding(.bottom , 30)
            }
            
            LargeTextContent(
                title:
                    "Forgot your password Don't worry we got you!",
                bodyText:
                    "enter your email to reset your password "
            )
        }
        .padding(.bottom, 30)
        
        VStack(alignment: .leading, spacing: 20) {
            InputFieldNormal(inputText: $password, placeholder: "Password", isPassword: true)
            .autocapitalization(.none)
            InputFieldNormal(inputText: $confirmPassword, placeholder: "Confirm Password", isPassword: true)
            .autocapitalization(.none)
            
        }.padding(.bottom,20)
        Spacer()
        VStack(spacing: 20) {
            Button("Reset Password") {
                if password != ""{
                    let parameters : [String: Any] = [ "password": password ,"confirmPassword":confirmPassword]
                    loginVM.ResetPassword(parameters: parameters)
                    /*if loginVM.isAuthenticated {
                     showHome.toggle()
                     } else{
                     showingAlert = true
                     }*/
                }
                
            }
            .buttonStyle(PrimaryButton())
            .alert(isPresented: $showingAlert){
                Alert(title: Text("invalid credentials"),message: Text("Bad email or password"),dismissButton: .default(Text("Got it!")))
                
            }
        }
        .padding(.bottom, 15)
    }
}

//
//  LoginView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct LoginView: View {
    @AppStorage("didLaunchBefore") var didLaunchBefore = false
    @StateObject private var loginVM = LoginViewModel()
    
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
            
            LoginTextContent()
                .padding(.bottom, 30)
            
            VStack(alignment: .leading, spacing: 20) {
                InputFieldNormal(inputText: $loginVM.email
                                 , placeholder: "Email Address")
                .autocapitalization(.none)
                InputFieldNormal(inputText: $loginVM.password, placeholder: "Password", isPassword: true)
                
            }.padding(.bottom,20)
            VStack(alignment: .trailing){
                
                NavigationLink(
                    destination:
                        ForgetPasswordView(email: "",showHome: $showHome)
                ) {
                    Text("forget your password")
                }
                .buttonStyle(SecondaryButton(buttonTextColor: Colors.orange, buttonBackground: Colors.quaternary))
                   
            }
           
            
            Spacer()
            VStack(spacing: 20) {
                Button("Login") {
                    
                    loginVM.login()
                    
                    if loginVM.isAuthenticated {
                        showHome.toggle()
                    } else{
                        showingAlert = true
                    }
                    
                    
                }
                .buttonStyle(PrimaryButton())
                .alert(isPresented: $showingAlert){
                    Alert(title: Text("invalid credentials"),message: Text("Bad email or password"),dismissButton: .default(Text("Got it!")))
               
                }
                NavigationLink(
                    destination:
                        SignUpView(showHome: $showHome,email: "",password: "",username: "",Sexe: "",phone: "")
                ) {
                    Text("Sign Up")
                }
                .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.headline.bold()))
            }
            .padding(.bottom, 15)
        }
        .padding(.top, 15)
        .navigationTitle("Login")
    }
    
}

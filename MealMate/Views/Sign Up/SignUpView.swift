//
//  SignUpView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var SignUp = SignUpViewModel()
    
    @Environment (\.presentationMode) var present
    @Binding var showHome: Bool
    @State  var email : String
    @State  var password : String
    @State  var username : String
    @State  var Sexe : String
    @State  var phone : String
    @State var showingAlert = false
    @State var LoggedIn = false
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            SignUpTextContent()
                .padding(.bottom, 30)
            
            VStack(alignment: .leading, spacing: 20) {
                InputFieldNormal(inputText: $username, placeholder: "Username")
                InputFieldNormal(inputText: $password, placeholder: "Password", isPassword: true)
                    .autocapitalization(.none)
                InputFieldNormal(inputText: $email, placeholder: "Email Address")
                    .autocapitalization(.none)
                InputFieldNormal(inputText: $phone, placeholder: "Phone number")
                    .autocapitalization(.none)
                InputFieldNormal(inputText: $Sexe, placeholder: "Sexe")
                    .autocapitalization(.none)
                
                
                VStack(spacing: 20) {
                 
                        VStack(alignment: .leading, spacing: 4) {
                            Text("terms and conditions")
                                .font(Font.title.bold())
                                .padding(.bottom, 4)
                            
                            Text("if you fill in the form and register you automatically agree to our term and condictions")
                                .lineLimit(4, reservesSpace: true)
                                .font(.body)
                                .foregroundColor(Colors.secondary)
                        }
                    NavigationLink(
                        destination:
                            termsAndConditions()
                    ) {
                        Text("view terms and conditions")
                    }
                    .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.headline.bold()))
                    Button(action: {
                        if email != "" && password != "" && username != "" && Sexe != "" && phone != "" {
                            let parameters : [String: Any] = [ "Sexe": Sexe,"email": email,"password": password,"username": username,  "phone": phone ]
                            SignUp.UserRegister(parameters: parameters)
                            //print(parameters)
                            // print(username)
                            LoggedIn = true
                        } else {
                            
                        }
                        if LoggedIn {
                            //  showHome.toggle()
                            showingAlert = true
                        }
                    }, label: {
                        Text("Create Account")
                    }).buttonStyle(PrimaryButton())
                        .alert(isPresented: $showingAlert){
                            Alert(title: Text("invalid credentials"),message: Text("Bad email or password"),dismissButton: .default(Text("Got it!")))
                        }
                    
                    NavigationLink(
                        destination:
                            LoginView(showHome: $showHome)
                    ) {
                        Text("Login Instead")
                    }
                    .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.headline.bold()))
                }
                .padding(.bottom, 15)
            }
            .padding(.top, 15)
            .navigationTitle("Sign Up")
        }
    }
}


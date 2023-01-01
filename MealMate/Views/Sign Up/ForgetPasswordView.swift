//
//  ForgetPasswordView.swift
//  MealMate
//
//  Created by HASSEN on 11/12/2022.
//

import SwiftUI

struct ForgetPasswordView: View {

    @AppStorage("didLaunchBefore") var didLaunchBefore = false
    @StateObject private var loginVM = SignUpViewModel()
    @State  var email : String
    @Binding var showHome: Bool
    @State var showingAlert = false
    @State var mailAlert = false
    
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
            InputFieldNormal(inputText: $email
                             , placeholder: "Email Address")
            .autocapitalization(.none)
            
        }.padding(.bottom,20)

        Spacer()
        VStack(spacing: 20) {
            Button("Reset Password") {
                Task{
                    if email != ""{
                        let parametaters : [String: Any] = [ "email": email]
                        await loginVM.forgetPassword(parameters: parametaters)
                        print(loginVM.mailSent )
                        
                        if await loginVM.mailSent{
                            mailAlert = true
                            print(mailAlert)
                            print("aaaa")
                        }
                    }
                }
                
            }
            .buttonStyle(PrimaryButton())
            .alert(isPresented: $mailAlert){
                Alert(title: Text("invalid credentials"),message: Text("Bad email or password"),dismissButton: .default(Text("Got it!")))
            }
          
        }
        .padding(.bottom, 15)
    }
}



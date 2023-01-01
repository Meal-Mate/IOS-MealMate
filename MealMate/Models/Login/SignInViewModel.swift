//
//  SignUpViewModel.swift
//  MealMate
//
//  Created by HASSEN on 9/12/2022.
//

import SwiftUI


class LoginViewModel: ObservableObject {
    
    var email: String = ""
    var password: String = ""
    
    @Published var isAuthenticated: Bool = false

    func login() {
        
        let defaults = UserDefaults.standard
        
        WebService().login(email: email, password: password) { result in
            switch result {
                
            case .success(let token):
                defaults.setValue(token, forKey: "jsonwebtoken")
                DispatchQueue.main.async {
                    self.isAuthenticated = true
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func logout() {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "jsonwebtoken")
        defaults.removeObject(forKey: "useremail")
        defaults.removeObject(forKey: "username")
        defaults.removeObject(forKey: "userid")
        defaults.removeObject(forKey: "userphone")
        DispatchQueue.main.async {
            self.isAuthenticated = false
        }
    }
    

    
    
}

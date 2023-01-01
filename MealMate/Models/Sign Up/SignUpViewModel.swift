//
//  SignUpViewModel.swift
//  MealMate
//
//  Created by HASSEN on 10/12/2022.
//


import SwiftUI
import Foundation

class SignUpViewModel: ObservableObject {
    @Published var SignUp = [RegisterUser]()
    
    @Published var mailSent: Bool = false
    
    let prefix = "https://mealmate.azurewebsites.net"
    func UserRegister(parameters: [String: Any] ){

        guard let url = URL(string: "\(prefix)/user/register") else {
            print("not found")
            return
        }
        let data = try! JSONSerialization.data(withJSONObject: parameters)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: request) {
            (data , res , error) in
            if error != nil
            {
                print ("error", error?.localizedDescription ?? "")
                return
            }
            do {
                if let data = data {
                    print(String(data:data,encoding: .utf8) as Any)
                    let result = try JSONDecoder().decode(RegisterUser.self, from: data)
                    
                    
                    DispatchQueue.main.async {
                        print(result)
                        
                    }
                    
                }
                else {
                    print ("no data")
                }
            } catch let JsonError {
                //debugPrint(JsonError)
                 // print("fetch json error :", JsonError.localizedDescription)
               // print(String(describing: JsonError))

            }
        }.resume()
        
        
    }
    func forgetPassword(parameters: [String: Any] ) async {

        guard let url = URL(string: "\(prefix)/restpassword/recover") else {
            print("not found")
            return
        }
        let data = try! JSONSerialization.data(withJSONObject: parameters)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
         URLSession.shared.dataTask(with: request) {
            (data , res , error) in
            if error != nil
            {
                print ("error", error?.localizedDescription ?? "")
                return
            }
            do {
                if let data = data {
                    print(String(data:data,encoding: .utf8) as Any)
                    let result = try JSONDecoder().decode(RegisterUser.self, from: data)
                    
                    
                    DispatchQueue.main.async {
                        self.mailSent = true
                        print("lhna",self.mailSent)
                        print(result)
                        
                    }
                    
                }
                else {
                    print ("no data")
                }
            } catch let JsonError {
                debugPrint(JsonError)
                 // print("fetch json error :", JsonError.localizedDescription)
               // print(String(describing: JsonError))

            }
        }.resume()
        
        
    }
    
}

//
//  PropositionViewModel.swift
//  MealMate
//
//  Created by HASSEN on 28/11/2022.
//

import SwiftUI
import Foundation

class PropositionViewModel: ObservableObject {
    @Published var propostions = [PropositionPostModel]()
    @Published var proposition = [PropositionPostModel]()
    
    let prefix = "https://mealmate.azurewebsites.net"
    func getAllPropostions(){
        guard let url = URL(string: "\(prefix)/proposition/") else {
            print("not found")
            return
        }
        
        URLSession.shared.dataTask(with: url) {
            (data , res , error) in
            if error != nil
            {
                print ("error", error?.localizedDescription ?? "")
                return
            }
            do {
                if let data = data {
                    let result = try JSONDecoder().decode([PropositionPostModel].self, from: data)
                    DispatchQueue.main.async {
                        self.propostions = result
                        print(self.propostions)
                    }
                    
                }
                else {
                    print ("no data")
                }
            } catch let JsonError {
                
                //  print("fetch json error :", JsonError.localizedDescription)
                print(String(describing: JsonError))
                
            }
        }.resume()
        
        
    }
    func addProposition(parameters: [String: Any] ){
        guard let url = URL(string: "\(prefix)/proposition/add") else {
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
                    let result = try JSONDecoder().decode(PropositionPostModel.self, from: data)
                    DispatchQueue.main.async {
                        print(result)
                    }
                    
                }
                else {
                    print ("no data")
                }
            } catch let JsonError {
                
                //  print("fetch json error :", JsonError.localizedDescription)
                print(String(describing: JsonError))
                
            }
        }.resume()
        
        
    }
    func updateProposition(propositionPostModel: PropositionPostModel){
        
        let defaults = UserDefaults.standard
        let id = defaults.object(forKey: "id")!
        
        guard let url = URL(string: "\(prefix)/proposition/update/\(id)") else {
            print("not found")
            return
        }
        let data = try! JSONSerialization.data(withJSONObject: propositionPostModel)
        var request = URLRequest(url: url)
        request.httpMethod = "PATCH"
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.uploadTask(with: request, from: data) {
            (data , res , error) in
            if error != nil
            {
                print ("error", error?.localizedDescription ?? "")
                return
            }
            do {
                if let data = data {
                    let result = try JSONDecoder().decode(PropositionPostModel.self, from: data)
                    DispatchQueue.main.async {
                        print(result)
                    }
                    
                }
                else {
                    print ("no data")
                }
            } catch let JsonError {
                
                //  print("fetch json error :", JsonError.localizedDescription)
                print(String(describing: JsonError))
                
            }
        }.resume()
        
        
    }
    func getProposition(){
        let defaults = UserDefaults.standard
        let id = defaults.object(forKey: "id")!
        guard let url = URL(string: "\(prefix)/proposition/\(id)") else {
            print("not found")
            return
        }
        
        URLSession.shared.dataTask(with: url) {
            (data , res , error) in
            if error != nil
            {
                print ("error", error?.localizedDescription ?? "")
                return
            }
            do {
                if let data = data {
                    let result = try JSONDecoder().decode([PropositionPostModel].self, from: data)
                    DispatchQueue.main.async {
                        self.proposition = result
                        print(self.propostions)
                    }
                    
                }
                else {
                    print ("no data")
                }
            } catch let JsonError {
                
                //  print("fetch json error :", JsonError.localizedDescription)
                (String(describing: JsonError))
                
            }
        }.resume()
        
        
    }
}



//
//  ViewModel.swift
//  MealMate
//
//  Created by HASSEN on 23/11/2022.
//

import Foundation
import SwiftUI

class RestaurantViewModel: ObservableObject{
    @Published var restaurants = [RestaurantPostModel]()
    @Published var restaurant = [RestaurantPostModel]()
    
    let prefix = "https://mealmate.azurewebsites.net"
    func getAllRestrauants(){
        guard let url = URL(string: "\(prefix)/restaurant/") else {
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
                    let result = try JSONDecoder().decode([RestaurantPostModel].self, from: data)
                    DispatchQueue.main.async {
                        self.restaurants = result
                        print(self.restaurants)
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
    func addRestrauants(parameters: [String: Any] ){
        guard let url = URL(string: "\(prefix)/restaurant/add") else {
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
                    let result = try JSONDecoder().decode(RestaurantPostModel.self, from: data)
                    DispatchQueue.main.async {
                        print(result)
                    }
                    
                }
                else {
                    print ("no data")
                }
            } catch let JsonError {
                debugPrint(JsonError )
                //  print("fetch json error :", JsonError.localizedDescription)
                print(String(describing: JsonError))
                
            }
        }.resume()
        
        
    }
    func updateRestrauants(restaurantPostModel: RestaurantPostModel){
        
        let defaults = UserDefaults.standard
        let id = defaults.object(forKey: "id")!
        
        guard let url = URL(string: "\(prefix)/restaurant/update/\(id)") else {
            print("not found")
            return
        }
        let data = try! JSONSerialization.data(withJSONObject: restaurantPostModel)
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
                    let result = try JSONDecoder().decode(RestaurantPostModel.self, from: data)
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
    func getRestrauant(){
        let defaults = UserDefaults.standard
        let id = defaults.object(forKey: "id")!
        guard let url = URL(string: "\(prefix)/restaurant/\(id)") else {
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
                    let result = try JSONDecoder().decode([RestaurantPostModel].self, from: data)
                    DispatchQueue.main.async {
                        self.restaurant = result
                        print(self.restaurants)
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

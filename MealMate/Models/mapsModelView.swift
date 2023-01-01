//
//  mapsModelView.swift
//  MealMate
//
//  Created by Yoteqi on 31/12/2022.
//

import SwiftUI

class MapsViewModel: ObservableObject {
    @Published var restaurants = [mapsModel]()
    
    let prefix = "https://mealmate.azurewebsites.net"
    func getAllMapRestaurants(){
        guard let url = URL(string: "\(prefix)/places?lat=10.181667&lng=36.806389&radius=5000&keyword=restaurant") else {
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
                    let result = try JSONDecoder().decode([mapsModel].self, from: data)
                    DispatchQueue.main.async {
                        self.restaurants = result
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
}

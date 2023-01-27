//
//  Router.swift
//  MealMate
//
//  Created by HASSEN on 11/12/2022.
//

import Foundation
import SwiftUI

class Router: ObservableObject {
    @Published var path = NavigationPath()
    
    func reset() {
        path = NavigationPath()
    }
}

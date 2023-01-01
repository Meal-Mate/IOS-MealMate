//
//  ForgetPasswordViewModel.swift
//  MealMate
//
//  Created by HASSEN on 11/12/2022.
//

import SwiftUI

class ForgetPasswordViewModel: ObservableObject {
    
    @Published var currentTab: Tab = .ForgetPasswordView
    func checkDeepLink(url: URL)->Bool{
        guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else {
            return false
            
        }
        if host == Tab.ForgetPasswordView.rawValue{
            currentTab =  .ForgetPasswordView
        }else{
            return false
        }
        return true
    }

}

enum Tab:String{
    case ForgetPasswordView = "forget"
}

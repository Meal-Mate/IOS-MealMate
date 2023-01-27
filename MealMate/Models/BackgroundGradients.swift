//
//  BackgroundGradients.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct BackgroundGradients {
    static let gradients = [
        LinearGradient(gradient: Gradient(colors: [Color("BlueGradient50%Opacity"), Colors.blue]), startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(gradient: Gradient(colors: [Color("OrangeGradient50%Opacity"), Colors.orange]), startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(gradient: Gradient(colors: [Color("GreenGradient50%Opacity"), Colors.green]), startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(gradient: Gradient(colors: [Color("IndigoGradient50%Opacity"), Colors.indigo]), startPoint: .topLeading, endPoint: .bottomTrailing),
        LinearGradient(gradient: Gradient(colors: [Color("TealGradient50%Opacity"), Colors.teal]), startPoint: .topLeading, endPoint: .bottomTrailing)
    ]
}

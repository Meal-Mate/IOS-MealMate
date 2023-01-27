//
//  SwiftUIView.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct ProfileQuickAction: Identifiable, Hashable {
    var id = UUID()
    let title: String
}

var profileQuickActions = [
    ProfileQuickAction(
        title: "Update My Profile Information"
    ),
    
    ProfileQuickAction(
        title: "Apply to Become an Instructor"
    ),
    
    ProfileQuickAction(
        title: "Review our New Privacy Policy"
    )
]

//
//  setting.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct Setting: Identifiable, Hashable {
    var id = UUID()
    let icon: String
    let iconBackground: Color
    let title: String
    let bodyText: String
    var doesHaveAToggle: Bool
}

var settings = [
    Setting(
        icon: Icons.stack,
        iconBackground: Colors.blue,
        title: "Latest Courses",
        bodyText: "Great courses in your inbox.",
        doesHaveAToggle: true
    ),
    
    Setting(
        icon: Icons.flame,
        iconBackground: Colors.orange,
        title: "Premium Plan",
        bodyText: "Upgrade today and save 25%.",
        doesHaveAToggle: false
    ),
    
    Setting(
        icon: Icons.globe,
        iconBackground: Colors.green,
        title: "Preferred Language",
        bodyText: "Select your preferred language.",
        doesHaveAToggle: false
    ),
    
    Setting(
        icon: Icons.bolt,
        iconBackground: Colors.blue,
        title: "Marketing Communications",
        bodyText: "Manage how your receive news.",
        doesHaveAToggle: false
    ),
    
    Setting(
        icon: Icons.lock,
        iconBackground: Colors.orange,
        title: "Privacy Settings",
        bodyText: "Manage permissions here.",
        doesHaveAToggle: false
    ),
    
    Setting(
        icon: Icons.pieChart,
        iconBackground: Colors.green,
        title: "Share Analytics",
        bodyText: "You can disable this feature.",
        doesHaveAToggle: true
    ),
    
    Setting(
        icon: Icons.appearance,
        iconBackground: Colors.indigo,
        title: "App Appearance",
        bodyText: "Customize the application.",
        doesHaveAToggle: false
    ),
    
    Setting(
        icon: Icons.trash,
        iconBackground: Colors.teal,
        title: "Delete Account",
        bodyText: "You can delete your account here.",
        doesHaveAToggle: false
    ),
    
    Setting(
        icon: Icons.message,
        iconBackground: Colors.blue,
        title: "Request Support",
        bodyText: "We are always here to help you.",
        doesHaveAToggle: false
    ),
    
    Setting(
        icon: Icons.document,
        iconBackground: Colors.orange,
        title: "Terms & Conditions",
        bodyText: "Updated 10 Nov 2020.",
        doesHaveAToggle: false
    )
]


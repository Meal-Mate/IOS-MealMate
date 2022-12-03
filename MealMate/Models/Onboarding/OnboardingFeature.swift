//
//  OnboardingFeature.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct OnboardingFeature: Identifiable, Hashable {
    var id = UUID()
    let icon: String
    let iconBackground: Color
    let title: String
    let bodyText: String
}

var onboardingFeatures = [
    OnboardingFeature(
        icon: Icons.people,
        iconBackground: Colors.orange10opacity,
        title: "Connect with Mealmates",
        bodyText: "Set range for your search for mealmates"
    ),
    
    OnboardingFeature(
        icon: Icons.restaurants,
        iconBackground: Colors.green,
        title: "Find your closest rastaurant",
        bodyText: "Find restaurant near you and options with reviews for your next meal"
    ),
    
    OnboardingFeature(
        icon: Icons.thumbsUp,
        iconBackground: Colors.indigo,
        title: "Helpful Support",
        bodyText: "We are always here to help you with whatever questions you might have."
    )
]

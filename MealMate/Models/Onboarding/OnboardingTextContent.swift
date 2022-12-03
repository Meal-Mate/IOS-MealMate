//
//  OnboardingTextContent.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct OnboardingTextContent: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let bodyText: String
}

var onboardingTextContent = [
    OnboardingTextContent(
        title: "Find partner for your next meal.",
        bodyText: "Start matching with others MealMates."
    ),
    
    OnboardingTextContent(
        title: "Find Restaurant For Your Next Meal.",
        bodyText: "Start Searching For Nearby."
    )
]
	


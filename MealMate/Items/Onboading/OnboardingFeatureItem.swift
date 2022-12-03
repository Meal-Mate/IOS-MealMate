//
//  OnboardingFeatureItem.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct OnboardingFeatureItem: View {
    var onboardingFeature: OnboardingFeature
    
    let gradientIndex: Int
    
    var body: some View {
        IconTextOnly(
            icon:
                onboardingFeature.icon,
            iconBackground:
                onboardingFeature.iconBackground,
            isBackgroundGradient:
                true,
            gradientIndex:
                gradientIndex,
            title:
                onboardingFeature.title,
            bodyText:
                onboardingFeature.bodyText
        )
    }
}


//
//  OnboardingTextContentItem.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct OnboardingTextContentItem: View {
    var textContentItem: OnboardingTextContent
    
    var body: some View {
        LargeTextContent(
            title:
                textContentItem.title,
            bodyText:
                textContentItem.bodyText
        )
    }
}

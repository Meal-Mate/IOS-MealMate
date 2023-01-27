//
//  HapticFeedback.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

//Function that triggers haptic feedback. There are different feedback types, such as 'error', 'success', and 'warning'.
func hapticFeedback(feedbackType: UINotificationFeedbackGenerator.FeedbackType) {
    UINotificationFeedbackGenerator().notificationOccurred(feedbackType)
}

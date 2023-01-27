//
//  OnboardingView.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI
import Pages

struct OnboardingView: View {
    @State private var textContent = onboardingTextContent
    @State private var feature = onboardingFeatures
    @State private var currentView = 0
    @State private var showHome = false
    
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack(spacing: 0) {
                    Pages(currentPage: $currentView, hasControl: false) {
                        firstView
                        secondView
                    }
                    
                    getStartedButton
                }
                .padding(.top, 15)
                .navigationBarItems(
                    trailing:
                        skipButton
                )
                .navigationBarTitleDisplayMode(.inline)
            }
            
            if showHome {
                TabBarView()
            }
        }
    }
    
    var firstView: some View {
        VStack(alignment: .leading, spacing: ScreenSize.screenHeight/28) {
            Image(Images.onboarding1)
                .resizable()
                .frame(width: ScreenSize.screenWidth-32, height: ScreenSize.screenHeight/3.9)
            
            OnboardingTextContentItem(textContentItem: textContent[0])
            
            VStack(alignment: .leading, spacing: ScreenSize.screenHeight/34) {
                OnboardingFeatureItem(onboardingFeature: feature[0], gradientIndex: 0)
                
            }
            
            Spacer()
        }
        .frame(width: ScreenSize.screenWidth-32)
    }
    
    var secondView: some View {
        VStack(alignment: .leading, spacing: ScreenSize.screenHeight/28) {
            Image(Images.onboarding2)
                .resizable()
                .frame(width: ScreenSize.screenWidth-32, height: ScreenSize.screenHeight/3.9)
            
            OnboardingTextContentItem(textContentItem: textContent[1])
            
            VStack(alignment: .leading, spacing: ScreenSize.screenHeight/34) {
                OnboardingFeatureItem(onboardingFeature: feature[1], gradientIndex: 1)
                OnboardingFeatureItem(onboardingFeature: feature[2], gradientIndex: 2)
            }
            
            Spacer()
        }
        .frame(width: ScreenSize.screenWidth-32)
    }
    
    var skipButton: some View {
        NavigationLink(
            destination:
                LoginView(showHome: $showHome)
        ) {
            Text("Skip")
        }
        .buttonStyle(TertiaryTextOnlyButton(buttonFont: Font.body.weight(.regular)))
    }
    
    var getStartedButton: some View {
        NavigationLink(
            destination:
                SignUpView(showHome: $showHome,email: "",password: "",username: "",Sexe: "",phone: "")
        ) {
            Text("Get Started")
        }
        .buttonStyle(PrimaryButton())
        .padding(.bottom, 15)
    }
}


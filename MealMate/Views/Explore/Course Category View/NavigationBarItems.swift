//
//  NavigationBarItems.swift
//  MealMate
//
//  Created by genope on 19/11/2022.
//

import SwiftUI

struct NavigationBarItems: ViewModifier {
    let title: String
    let icon: String
    
    @State private var allViews: SelectedView?
    @State var selectedView: SelectedView
    
    func body(content: Content) -> some View {
        content
            .navigationBarItems(
                leading:
                    Button {
                        self.allViews = selectedView
                    } label: {
                        Image(systemName: icon)
                            .font(Font.headline.bold())
                    },
                trailing:
                    NavigationLink(
                        destination:
                            OnboardingView()
                    ) {
                        Image(Images.currentUser)
                    }
            )
            .navigationBarTitle(title)
            .fullScreenCover(item: $allViews) { selectedView in
                switch selectedView {
                case .settings:
                    SettingsView()
                case .filters:
                    SearchFiltersView()
                }
            }
    }
}

extension View {
    func addNavigationBarItems(title: String, icon: String, selectedView: SelectedView) -> some View {
        modifier(NavigationBarItems(title: title, icon: icon, selectedView: selectedView))
    }
}

enum SelectedView: Int, Identifiable {
    var id: Int {
        rawValue
    }
    
    case settings, filters
}

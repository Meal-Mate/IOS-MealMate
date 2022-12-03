//
//  QuickLinksSection.swift
//  MealMate
//
//  Created by HASSEN on 3/12/2022.
//

import SwiftUI

struct QuickLinksSection: View {
    @State private var quickLinks = exploreQuickLinks
    
    var body: some View {
        VStack(spacing: 20) {
            listSectionHeader
            links
        }
    }
    
    var listSectionHeader: some View {
        VStack(spacing: 15) {
            ListSectionHeader(title: "Quick Links", doesHaveAButton: false)
                .frame(width: ScreenSize.screenWidth-32)
            
            ListDivider()
        }
    }
    
    var links: some View {
        VStack(spacing: 20) {
            ForEach(quickLinks) { quickLink in
                ExploreQuickLinkItem(exploreQuickLink: quickLink)
                ListDivider()
            }
        }
    }
}

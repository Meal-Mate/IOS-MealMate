//
//  SettingItem.swift
//  MealMate
//
//  Created by HASSEN on 5/12/2022.
//

import SwiftUI

struct SettingItem: View {
    var setting: Setting
    
    var body: some View {
        Group {
            if setting.doesHaveAToggle {
                IconTextToggle(
                    icon:
                        setting.icon,
                    iconBackground:
                        setting.iconBackground,
                    title:
                        setting.title,
                    bodyText:
                        setting.bodyText
                )
            } else {
                SmallIconText(
                    icon:
                        setting.icon,
                    iconBackground:
                        setting.iconBackground,
                    title:
                        setting.title,
                    bodyText:
                        setting.bodyText
                )
            }
        }
    }
}



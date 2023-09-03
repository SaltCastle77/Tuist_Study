//
//  Project+Settings.swift
//  Config
//
//  Created by 서원지 on 2023/06/11.
//

import Foundation
import ProjectDescription


extension Settings {
    public static let appMainSetting: Settings = .settings(
        base: [ "PRODUCT_NAME": "CalanderApp",
                "CFBundleDisplayName" : "CalanderApp",
                "MARKETING_VERSION": .string(.appVersion()),
                "AS_AUTHENTICATION_SERVICES_ENABLED": "YES",
                "PUSH_NOTIFICATIONS_ENABLED":"YES",
                "ENABLE_BACKGROUND_MODES" : "YES",
                "BACKGROUND_MODES" : "remote-notification",
                "ASSOCIATED_DOMAINS": "applinks:PingPong.page.link",
                "CURRENT_PROJECT_VERSION": .string(.appBuildVersion()),
                "CODE_SIGN_IDENTITY": "iPhone Developer",
                "CODE_SIGN_STYLE": "Automatic",
                "DEVELOPMENT_TEAM": "N94CS4N6VR", "DEBUG_INFORMATION_FORMAT": "DWARF with dSYM File", "DEVELOPMENT_ASSET_PATH" : "\"Resources/Preview Content\""]
                    ,configurations: [
                    .debug(name: .debug, settings: ["PRODUCT_NAME" : "CalanderApp","DISPLAY_NAME" : "CalanderApp",  "OTHER_LDFLAGS": ["-Xlinker", "-interposable",  "-all_load"]]),
                    .debug(name: "Dev", settings: ["PRODUCT_NAME" : "CalanderApp-Dev","DISPLAY_NAME" : "Yeom",  "OTHER_LDFLAGS": ["-Xlinker", "-interposable", "-all_load"]]),
                    .release(name: .release, settings: ["DEVELOPMENT_ASSET_PATHS": "\"Resources/Preview Content\"","PRODUCT_NAME" :"CalanderApp" , "DISPLAY_NAME" : "CalanderApp" ,  "OTHER_LDFLAGS": ["-Xlinker", "-interposable", "-all_load"]])
                ], defaultSettings: .recommended)
    
    
    public static let appBaseSetting: Settings = .settings(
        base: ["PRODUCT_NAME": "CalanderApp",
               "MARKETING_VERSION": .string(.appVersion()),
               "CURRENT_PROJECT_VERSION": .string(.appBuildVersion()),
               "CODE_SIGN_STYLE": "Automatic",
               ],
        configurations: [
            .debug(name: .debug, settings: ["PRODUCT_NAME": "CalanderApp", "OTHER_LDFLAGS": ["-Xlinker", "-interposable","-all_load"]]),
            .release(name: .release, settings: ["PRODUCT_NAME": "CalanderApp", "OTHER_LDFLAGS": ["-Xlinker", "-interposable", "-all_load"]])],
        defaultSettings: .recommended)
    
}



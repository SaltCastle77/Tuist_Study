//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 염성훈 on 2023/09/10.
//

import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
    name: "HomeApp",
    bundleId: .appBundleID(name: "HomeApp"),
    platform: .iOS,
    product: .app,
    setting: .appMainSetting,
    dependencies: [
        .Projcet.Home
    ],
    sources: ["Sources/**"],
    infoPlist: .file(path: "Support/HomeInfo.plist")
)

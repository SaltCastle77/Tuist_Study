//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 염성훈 on 2023/08/20.
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
        .project(target: "Home", path: .relativeToRoot("Projects/Feature/Home"))
    ],
    sources: ["Sources/**"],
    infoPlist: .file(path: "Support/HomeInfo.plist")
)

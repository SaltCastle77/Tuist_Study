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
    name: "SearchApp",
    bundleId: .appBundleID(name: "SearchApp"),
    platform: .iOS,
    product: .app,
    setting: .appMainSetting,
    dependencies: [
        .Projcet.Search
    ],
    sources: ["Sources/**"],
    infoPlist: .file(path: "Support/SearchInfo.plist")
)

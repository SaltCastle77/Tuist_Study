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
    name: "NewAndHotApp",
    bundleId: .appBundleID(name: "NewAndHotApp"),
    platform: .iOS,
    product: .app,
    setting: .appMainSetting,
    dependencies: [
        .Projcet.NewAndHot
    ],
    sources: ["Sources/**"],
    infoPlist: .file(path: "Support/NewAndHotInfo.plist")
)

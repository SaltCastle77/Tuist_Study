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
    name: "MyPageApp",
    bundleId: .appBundleID(name: "MyPageApp"),
    platform: .iOS,
    product: .app,
    setting: .appMainSetting,
    dependencies: [
        .Projcet.MyPage
    ],
    sources: ["Sources/**"],
    infoPlist: .file(path: "Support/MyPageInfo.plist")
)


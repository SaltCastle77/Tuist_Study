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
    name: "CoreApp",
    bundleId: .appBundleID(name: "CoreApp"),
    platform: .iOS,
    product: .app,
    setting: .appMainSetting,
    dependencies: [
        .Projcet.Core
    ],
    sources: ["Sources/**"],
    infoPlist: .file(path: "Support/CoreInfo.plist")
)

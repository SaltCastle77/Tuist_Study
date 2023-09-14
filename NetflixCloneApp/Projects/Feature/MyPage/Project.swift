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
    name: "MyPage",
    bundleId: .appBundleID(name: "MyPage"),
    product: .staticFramework,
    setting: .appBaseSetting,
    sources: ["Sources/**"]
)

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
    name: "OnBoarding" ,
    bundleId: .appBundleID(name: ".OnBoarding"),
    product: .staticFramework,
    setting: .appBaseSetting,
    dependencies: [
        .external(name: "SnapKit")
    ],
    sources: ["Sources/**"]
)

//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 염성훈 on 2023/08/13.
//

import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let localHelper = LocalHelper(name: "MyPlugin")

let project = Project.makeModule(
    name: "CoreApp",
    bundleId: .appBundleID(name: "CoreApp"),
    platform: .iOS,
    product: .app,
    setting: .appMainSetting,
    dependencies: [
        TargetDependency.project(target: "Core", path: .relativeToRoot("Projects/Core"))
    ],
    sources: ["Sources/**"]
)



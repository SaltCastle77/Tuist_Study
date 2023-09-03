//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 염성훈 on 2023/08/13.
//

import ProjectDescription
import ProjectDescriptionHelpers
import Foundation


let project = Project.makeModule(
    name: "Core",
    bundleId: .appBundleID(name: "Core"),
    platform: .iOS,
    product: .staticFramework,
    setting: .appBaseSetting,
    sources: ["Sources/**"]
)

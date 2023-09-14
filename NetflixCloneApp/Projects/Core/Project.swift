//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 염성훈 on 2023/09/10.
//

import Foundation
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Core",
    bundleId: .appBundleID(name: "Core"),
    product: .staticFramework,
    setting:  .appBaseSetting,
    dependencies: [
        .Projcet.Home,
        .Projcet.NewAndHot,
        .Projcet.MyPage,
        .Projcet.Search
    ],
    sources: ["Sources/**"]
//    resources: ["Resources/**"]
)

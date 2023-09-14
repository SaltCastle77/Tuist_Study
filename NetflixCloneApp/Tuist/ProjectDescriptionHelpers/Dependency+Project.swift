//
//  Depenedcy+Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 염성훈 on 2023/09/10.
//

import ProjectDescription
import Foundation

public extension TargetDependency {
    enum Projcet {}
}

public extension TargetDependency.Projcet {
    //Core
    static let Core = TargetDependency.project(target: "Core", path: .relativeToRoot("Projects/Core"))
    //Feature
    static let Home = TargetDependency.project(target: "Home", path: .relativeToRoot("Projects/Feature/Home"))
    static let NewAndHot = TargetDependency.project(target: "NewAndHot", path: .relativeToRoot("Projects/Feature/NewAndHot"))
    static let MyPage =  TargetDependency.project(target: "MyPage", path: .relativeToRoot("Projects/Feature/MyPage"))
    static let Search = TargetDependency.project(target: "Search", path: .relativeToRoot("Projects/Feature/Search"))
    
    //DemoApp
    static let CoreApp = TargetDependency.project(target: "CoreApp", path: .relativeToRoot("Projects/DemoApp/CoreApp"))
    static let HomeApp = TargetDependency.project(target: "HomeApp", path: .relativeToRoot("Projects/DemoApp/HomeApp"))
    static let SearchApp = TargetDependency.project(target: "SearchApp", path: .relativeToRoot("Projects/DemoApp/SearchApp"))
    static let MyPageApp = TargetDependency.project(target: "MyPageApp", path: .relativeToRoot("Projects/DemoApp/MyPageApp"))
    static let NewAndHotApp = TargetDependency.project(target: "NewAndHotApp", path: .relativeToRoot("Projects/DemoApp/NewAndHotApp"))
    
}

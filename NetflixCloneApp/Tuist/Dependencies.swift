//
//  Dependencies.swift
//  NetflixCloneAppManifests
//
//  Created by 염성훈 on 2023/09/10.
//

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
        .remote(url: "https://github.com/SnapKit/SnapKit.git", requirement: .upToNextMajor(from: "5.0.1")),
        .remote(url: "https://github.com/ReactorKit/ReactorKit.git", requirement: .upToNextMajor(from: "3.2.0")),
        .remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .exact("6.6.0")),
        .remote(url: "https://github.com/RxSwiftCommunity/RxFlow.git", requirement: .upToNextMajor(from: "2.10.0"))
    ],
    platforms: [.iOS]
)


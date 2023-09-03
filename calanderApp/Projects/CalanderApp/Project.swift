import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains CalanderApp App target and CalanderApp unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.makeModule(
    name: "CalanderApp",
    bundleId: .mainBundleID(),
    platform: .iOS,
    product: .app,
    setting: .appMainSetting,
    dependencies: [
        .external(name: "SnapKit"),
        .external(name: "ReactorKit"),
        .external(name: "RxSwift"),
        .external(name: "RxCocoa"),
        .external(name: "RxFlow")
    ],
    sources: ["Sources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)

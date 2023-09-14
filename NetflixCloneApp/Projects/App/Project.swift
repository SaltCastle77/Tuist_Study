import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.makeModule(
    name: "NetflixCloneApp",
    bundleId: .mainBundleID(),
    platform: .iOS,
    product:.app,
    setting: .appMainSetting,
    dependencies: [
        .Projcet.Core
    ],
    sources: ["Sources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)

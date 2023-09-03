//
//  DashBoardFlow.swift
//  CalanderApp
//
//  Created by 염성훈 on 2023/08/06.
//  Copyright © 2023 yeom.com. All rights reserved.
//

import Foundation
import RxFlow
import UIKit

class DashBoardFlow: Flow {
    
    var root: Presentable {
        return self.rootViewController
    }
    
    private lazy var rootViewController: UITabBarController = {
        let tabBarViewController = UITabBarController()
        return tabBarViewController
    }()
    
    init() {}
    
    func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? DemoSteps else { return .none }
        switch step {
        case .dashBoardIsRequired:
            return self.navigateToDashBoard()
        default:
            return .none
        }
    }
    
    private func navigateToDashBoard() -> FlowContributors {
        
        let homeFlow = HomeFlow()
        let movieFlow = MoviewFlow()
        let settingFlow = SettingFlow()
        
        Flows.use(homeFlow, movieFlow, settingFlow, when: .created) { [weak self] (root1: UINavigationController, root2: UINavigationController, root3: UINavigationController) in
            let tabBarItem1 = UITabBarItem(title: "Home", image: UIImage(systemName: "homekit"), selectedImage: nil)
            let tabBarItem2 = UITabBarItem(title: "Movie", image: UIImage(systemName: "list.bullet.clipboard"), selectedImage: nil)
            let tabBarItem3 = UITabBarItem(title: "Setting", image: UIImage(systemName: "gearshape"), selectedImage: nil)
            
            root1.tabBarItem = tabBarItem1
            root1.title = "Home"
            root2.tabBarItem = tabBarItem2
            root2.title = "Movie"
            root3.tabBarItem = tabBarItem3
            root3.title = "Setting"
            
            self?.rootViewController.setViewControllers([root1, root2, root3], animated: false)
        }
        
        return .multiple(flowContributors: [
            .contribute(withNextPresentable: homeFlow, withNextStepper: OneStepper(withSingleStep: DemoSteps.homeIsRequired)),
            .contribute(withNextPresentable: movieFlow, withNextStepper: OneStepper(withSingleStep: DemoSteps.movieIsRequired)),
            .contribute(withNextPresentable: settingFlow, withNextStepper: OneStepper(withSingleStep: DemoSteps.settingIsRequired))
        ])
        
    }
}

//
//  LoginFlow.swift
//  CalanderApp
//
//  Created by 염성훈 on 2023/08/06.
//  Copyright © 2023 yeom.com. All rights reserved.
//

import Foundation
import RxFlow
import UIKit

class LoginFlow:Flow {
    
    var root: Presentable {
        return self.rootViewController
    }
    
    private lazy var rootViewController: UINavigationController = {
        let navViewController = UINavigationController()
        return navViewController
    }()
    
    init() { }
    
    func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? DemoSteps else { return .none }
        
        switch step {
        case .loginIsRequired:
            return self.navigationToLoginVC()
        case .LoginPasswordIsRequired:
            return self.navigationToLoginPasswordVC()
        case .dashBoardIsRequired:
            return .end(forwardToParentFlowWithStep: DemoSteps.dashBoardIsRequired)
        default:
            return .none
        }
    }
    
    private func navigationToLoginVC() -> FlowContributors {
        let viewController = LoginViewController()
        self.rootViewController.setViewControllers([viewController], animated: false)
        return .one(flowContributor: .contribute(withNext: viewController))
    }
    
    private func navigationToLoginPasswordVC() -> FlowContributors {
        let viewController = LoginPasswordViewController()
        self.rootViewController.pushViewController(viewController, animated: true)
        return .one(flowContributor: .contribute(withNext: viewController))
    }
    
}

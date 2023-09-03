//
//  AppFlow.swift
//  CalanderApp
//
//  Created by 염성훈 on 2023/08/06.
//  Copyright © 2023 yeom.com. All rights reserved.
//

import Foundation
import UIKit
import RxFlow
import RxCocoa
import RxSwift

class AppFlow: Flow {
    
    var window: UIWindow
    
    var root: Presentable {
        return self.window
    }
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func navigate(to step: RxFlow.Step) -> RxFlow.FlowContributors {
        guard let step = step as? DemoSteps else { return .none }
        switch step {
        case .loginIsRequired:
            return self.navigateToLoginVC()
        case .dashBoardIsRequired:
            return self.navigateToDashBoard()
        default:
            return .none
        }
    }
    
    private func navigateToLoginVC() -> FlowContributors {
        let loginFlow = LoginFlow()
        Flows.use(loginFlow, when: .created) { (root) in
            self.window.rootViewController = root
        }
        return .one(flowContributor: .contribute(withNextPresentable: loginFlow, withNextStepper: OneStepper(withSingleStep: DemoSteps.loginIsRequired)))
    }

    private func navigateToDashBoard() -> FlowContributors {
        let dashBoardFlow = DashBoardFlow()
        Flows.use(dashBoardFlow, when: .created) { (root) in
            self.window.rootViewController = root
        }
        return .one(flowContributor: .contribute(withNextPresentable: dashBoardFlow, withNextStepper: OneStepper(withSingleStep: DemoSteps.dashBoardIsRequired)))
    }
}

class AppStepper: Stepper {
    
    let steps = PublishRelay<Step>()
    private let disposeBag = DisposeBag()
    
    init() {
        
    }
    
    var initialStep: Step {
        return DemoSteps.loginIsRequired
    }
}

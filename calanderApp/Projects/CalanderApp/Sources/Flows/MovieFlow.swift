//
//  MovieFlow.swift
//  CalanderApp
//
//  Created by 염성훈 on 2023/08/06.
//  Copyright © 2023 yeom.com. All rights reserved.
//

import RxFlow
import UIKit

class MoviewFlow: Flow {

    var root: Presentable {
        return self.rootViewController
    }

    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()

    init() {}

    func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? DemoSteps else { return .none }
        switch step {
        case .movieIsRequired:
            return self.navigateToMovie()
        case .movieListPushIsRequired:
            return self.navigateToMovieList()
        case .movieListModalIsRequired:
            return self.navigateToMovieListModal()
            
        default:
            return .none
        }
    }
    
    private func navigateToMovie() -> FlowContributors {
        let viewController = MovieViewController()
        self.rootViewController.setViewControllers([viewController], animated: false)
        return .one(flowContributor: .contribute(withNext: viewController))
    }
    
    private func navigateToMovieList() -> FlowContributors {
        let movieListViewController = MovieListViewController()
        self.rootViewController.pushViewController(movieListViewController, animated: true)
        return .one(flowContributor: .contribute(withNext: movieListViewController))
    }
    
    private func navigateToMovieListModal() -> FlowContributors {
        let movieListFlow = MovieListFLow()
        
        Flows.use(movieListFlow, when: .created) { root in
            root.modalPresentationStyle = .fullScreen
            self.rootViewController.present(root, animated: true)
        }
        
        return .one(
            flowContributor:
                    .contribute(withNextPresentable: movieListFlow, withNextStepper: OneStepper(withSingleStep: DemoSteps.movieListModalIsRequired)))
    }
    
    
//    private func naviagteToMovieSetting() -> FlowContributors {
//        let viewController =
//    }
}

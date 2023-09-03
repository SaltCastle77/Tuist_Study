//
//  MovieListFlow.swift
//  CalanderApp
//
//  Created by 염성훈 on 2023/08/26.
//  Copyright © 2023 Yeom. All rights reserved.
//

import Foundation
import RxFlow
import UIKit

class MovieListFLow:Flow {
    
    var root: Presentable {
        return self.rootViewController
    }
    
    lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()
    
    func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? DemoSteps else { return .none }
        switch step {
        case .movieListModalIsRequired:
            return self.navigateToMovieListPresented()
        case .movieSettingIsRequired:
            return self.navigateToMovieSetting()
        case .backToMovieIsRequired:
            return self.navigateToPopMovie()
        default:
            return .none
        }
    }
    
    private func navigateToMovieListPresented() -> FlowContributors {
        let movieListViewController = MovieListViewController()
        self.rootViewController.setViewControllers([movieListViewController], animated: false)
        return .one(flowContributor: .contribute(withNext: movieListViewController))
    }
    
    private func navigateToMovieSetting() -> FlowContributors {
        let movieSettingVC = MovieSettingViewController()
        self.rootViewController.pushViewController(movieSettingVC, animated: true)
        return .one(flowContributor: .contribute(withNext: movieSettingVC))
    }
    
    private func navigateToPopMovie() -> FlowContributors {
        self.rootViewController.dismiss(animated: true)
        return .none
    }
}

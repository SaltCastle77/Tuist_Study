//
//  AppDelegate.swift
//  HomeApp
//
//  Created by 염성훈 on 2023/08/20.
//  Copyright © 2023 Yeom. All rights reserved.
//

import Foundation
import UIKit
import Home

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
//        let homeVC = HomeTestViewController()
//        let navHomeVC = UINavigationController(rootViewController: homeVC)
        
//        // 로깅을 위한 부분 추가
//        self.coordinator.rx.willNavigate.subscribe(onNext: { (flow, step) in
//            print("will navigate to flow=\(flow) and step=\(step)")
//        }).disposed(by: disposeBag)
//
//        self.coordinator.rx.didNavigate.subscribe(onNext: { (flow, step) in
//            print("did navigate to flow=\(flow) and step=\(step)")
//        }).disposed(by: disposeBag)
        
//        window?.rootViewController = navHomeVC
//        window?.makeKeyAndVisible()
        return true
    }
}

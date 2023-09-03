//
//  SceneDelegate.swift
//  CalanderApp
//
//  Created by 염성훈 on 2023/08/15.
//  Copyright © 2023 Yeom. All rights reserved.
//


import UIKit
import RxFlow
import RxSwift
import RxCocoa


class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator = FlowCoordinator()
    var disposeBag: DisposeBag = DisposeBag()

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        
//        // 로깅을 위한 부분 추가
//        self.coordinator.rx.willNavigate.subscribe(onNext: { (flow, step) in
//            print("will navigate to flow=\(flow) and step=\(step)")
//        }).disposed(by: disposeBag)
//
//        self.coordinator.rx.didNavigate.subscribe(onNext: { (flow, step) in
//            print("did navigate to flow=\(flow) and step=\(step)")
//        }).disposed(by: disposeBag)
        
        let appFlow = AppFlow(window: window!)
        self.coordinator.coordinate(flow: appFlow, with: AppStepper())
        window?.makeKeyAndVisible()
        
    }
    

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}

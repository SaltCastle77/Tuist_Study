import UIKit
//import CalanderAppKit
//import CalanderAppUI
import RxFlow
import RxSwift
import RxCocoa

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator = FlowCoordinator()
    var disposeBag: DisposeBag = DisposeBag()
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
//        window = UIWindow(frame: UIScreen.main.bounds)
        
//        // 로깅을 위한 부분 추가
//        self.coordinator.rx.willNavigate.subscribe(onNext: { (flow, step) in
//            print("will navigate to flow=\(flow) and step=\(step)")
//        }).disposed(by: disposeBag)
//
//        self.coordinator.rx.didNavigate.subscribe(onNext: { (flow, step) in
//            print("did navigate to flow=\(flow) and step=\(step)")
//        }).disposed(by: disposeBag)
//        
//        let appFlow = AppFlow(window: window!)
//        self.coordinator.coordinate(flow: appFlow, with: AppStepper())
//        window?.makeKeyAndVisible()
        
        return true
    }
}

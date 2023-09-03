//
//  RootViewController.swift
//  CalanderApp
//
//  Created by 염성훈 on 2023/07/30.
//  Copyright © 2023 yeom.com. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import RxSwift
import RxCocoa
import ReactorKit
import RxFlow

class HomeViewController: UIViewController, Stepper {
    
    var steps: PublishRelay<Step> = PublishRelay<Step>()
    
    private var disposeBag: DisposeBag = DisposeBag()
    
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        return stackView
    }()
    
    lazy var testButton: UIButton = {
        let button = UIButton()
        button.setTitle("홈", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutView()
        bindUI()
    }
    
    private func layoutView() {
        self.view.backgroundColor = .yellow
        self.view.addSubview(mainStackView)
        mainStackView.snp.makeConstraints { make in
            make.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        mainStackView.addArrangedSubview(testButton)
        mainStackView.addArrangedSubview(UIView())
    }
    
    private func bindUI() {
        testButton.rx.tap
            .subscribe(onNext: {
                self.steps.accept(DemoSteps.movieListPushIsRequired)
            })
            .disposed(by: disposeBag)
    }
    
}

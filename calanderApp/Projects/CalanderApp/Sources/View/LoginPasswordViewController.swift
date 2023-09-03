//
//  LoginPasswordViewController.swift
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

class LoginPasswordViewController: UIViewController,Stepper {
    
    var steps: PublishRelay<Step> = PublishRelay<Step>()
    private let disposeBag = DisposeBag()
    
    lazy var mainStackView: UIStackView = {
        let view = UIStackView()
        view.alignment = .fill
        view.axis = .vertical
        view.distribution = .fill
        return view
    }()
    
    lazy var rootButton: UIButton = {
        let button = UIButton()
        button.setTitle("대시보드 뷰로", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutView()
        bindUI()
    }
    
    private func layoutView() {
        self.view.backgroundColor = .gray
        self.view.addSubview(mainStackView)
        mainStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        mainStackView.addArrangedSubview(rootButton)
    }
    
    private func bindUI() {
        self.rootButton.rx.tap
            .subscribe(onNext: {
                self.steps.accept(DemoSteps.dashBoardIsRequired)
            })
            .disposed(by: disposeBag)
    }
}

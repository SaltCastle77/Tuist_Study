//
//  LoginViewController.swift
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

class LoginViewController:UIViewController,Stepper  {
    
    var steps: PublishRelay<Step> = PublishRelay<Step>()
    private let disposeBag = DisposeBag()
    
    lazy var mainScrollView: UIScrollView = {
        let view = UIScrollView()
        return view
    }()
    
    lazy var mainStackView: UIStackView = {
        let view = UIStackView()
        view.alignment = .fill
        view.axis = .vertical
        view.distribution = .fill
        return view
    }()
    
    lazy var rootButton: UIButton = {
        let button = UIButton()
        button.setTitle("패스워드 뷰로", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutView()
        bindUI()
    }
    
    private func layoutView() {
        self.view.backgroundColor = .white
        self.view.addSubview(mainStackView)
        mainStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        mainStackView.addArrangedSubview(rootButton)
    }
    
    private func bindUI() {
        self.rootButton.rx.tap
            .subscribe(onNext: {
                self.steps.accept(DemoSteps.LoginPasswordIsRequired)
            })
            .disposed(by: disposeBag)
    }
}

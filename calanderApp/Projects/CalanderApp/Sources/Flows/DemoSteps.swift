//
//  DemoSteps.swift
//  CalanderApp
//
//  Created by 염성훈 on 2023/08/06.
//  Copyright © 2023 yeom.com. All rights reserved.
//

import RxFlow

enum DemoSteps:Step {
    
    case loginIsRequired
    case LoginPasswordIsRequired
    
    case dashBoardIsRequired
    
    case homeIsRequired
    
    case movieIsRequired
    case movieListPushIsRequired
    case movieListModalIsRequired
    case movieSettingIsRequired
    case backToMovieIsRequired
    
    case settingIsRequired
}

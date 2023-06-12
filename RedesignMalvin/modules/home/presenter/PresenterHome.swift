//
//  PresenterHome.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 31/05/23.
//

import Foundation
import UIKit


class PresenterHome {
    
    private let router: RouterHome
    private let interactor: InteractorHome
    
    init(router: RouterHome, interactor: InteractorHome) {
        self.router = router
        self.interactor = interactor
    }
    
    func navToMain(navigationToMain: UINavigationController){
        router.navToMain(navigationMain: navigationToMain)
    }
    
}

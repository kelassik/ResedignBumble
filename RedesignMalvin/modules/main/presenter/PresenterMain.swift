//
//  PresenterMain.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 03/06/23.
//

import Foundation


class PresenterMain {
    
    private let router: RouterMain
    private let interactor: InteractorMain
    
    
    init(router: RouterMain, interactor: InteractorMain) {
        self.router = router
        self.interactor = interactor
    }
    
}

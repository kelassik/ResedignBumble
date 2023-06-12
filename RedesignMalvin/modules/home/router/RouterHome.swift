//
//  Router.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 30/05/23.
//

import Foundation
import UIKit

class RouterHome: BaseRouter {
    
    init(parent: UIWindow? = nil) {
        super.init(parent: parent)
     }
    
    override func setUpView() -> HomeView {
        let interactor = InteractorHome()
        let presenter = PresenterHome(router: self, interactor: interactor)
        let view = HomeView(presenter: presenter)
        self.currentNavigation = view.navigationController
        return view
    }
    
    override func start() {
        let vc = self.setUpView()
        let navigationControl = UINavigationController(rootViewController: vc)
        self.currentNavigation = navigationControl
        self.parent?.rootViewController = navigationControl
        self.parent?.makeKeyAndVisible()
    
    }
    
    func navToMain(navigationMain: UINavigationController){
        let mainView = MainTabbar()
        navigationMain.pushViewController(mainView, animated: true)
    }
    
}

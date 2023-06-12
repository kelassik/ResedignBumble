//
//  RouterMain.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 03/06/23.
//

import Foundation
import UIKit

class RouterMain: BaseRouter {
    
    
    override func setUpView() -> ViewMain {
        let interactor = InteractorMain()
        let presenter = PresenterMain(router:self, interactor:interactor)
        let view = ViewMain(presenter: presenter)
        return view
    }
    

}

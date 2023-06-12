//
//  HomeView.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 30/05/23.
//

import UIKit

class HomeView: UIViewController {
    
    
    @IBOutlet weak var btnExplore: UIButton!
    
    var presenter: PresenterHome
    
    init(presenter: PresenterHome) {
        self.presenter = presenter
        super.init(nibName: String(describing: HomeView.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpButton()

    }
}

extension HomeView {
    
    func setUpButton(){
        
        btnExplore.addTarget(self, action: #selector(navToMainPress(_:)), for: .touchUpInside)
    }
}

extension HomeView{
    
    @objc private func navToMainPress(_ sender:UIButton){
        if let navigationMain = self.navigationController{
            presenter.navToMain(navigationToMain: navigationMain)
        }
    }
}


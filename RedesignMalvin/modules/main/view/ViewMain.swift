//
//  ViewMain.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 03/06/23.
//

import UIKit

class ViewMain: UIViewController {
    
    @IBOutlet var layerSearch: UIView!
    let presenter: PresenterMain
    @IBOutlet weak var btnLike: UIButton!
    @IBOutlet weak var viewImage: UIView!
    @IBOutlet weak var btnNoLike: UIButton!
    
    
    init(presenter: PresenterMain) {
        self.presenter = presenter
        super.init(nibName: String(describing: ViewMain.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        setUpButton()
    }
}

extension ViewMain {
    
    func setUpView() {
        
        self.layerSearch.layer.borderColor = UIColor.gray.cgColor
        self.layerSearch.layer.borderWidth = 0.1
        self.layerSearch.layer.cornerRadius = 18
      
        
    }
    
    func setUpButton()
    {
//        btnLike.layer.cornerRadius = btnLike.frame.size.height/2
//        btnLike.clipsToBounds = true
        btnNoLike.layer.cornerRadius = btnLike.frame.size.height/2
        btnNoLike.clipsToBounds = true
       }
}

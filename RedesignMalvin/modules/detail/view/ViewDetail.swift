//
//  ViewDetail.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 08/06/23.
//

import UIKit

class ViewDetail: UIViewController {

    @IBOutlet weak var btnMatch: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
}

extension ViewDetail {
    
    func setUpbtnMatch(){
        
        btnMatch.layer.cornerRadius = 10
        btnMatch.clipsToBounds = true
    }
}

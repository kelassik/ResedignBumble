//
//  ButtonMatch.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 08/06/23.
//

import Foundation
import UIKit

class ButtonMatch: UIButton {
    
    let firstColor =  UIColor.orange
    let secondColor = UIColor.yellow
    let startPoint = CGPoint(x: 0, y: 1)
    let endpoint = CGPoint(x: 1, y: 1)
    var gradientLayer: CAGradientLayer!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    override func draw(_ rect: CGRect) {
        gradientLayer.frame =  rect
        makeCornerRadius(10, maskedCorner: nil)
    }
    
    func setUp() {
        gradientLayer = CAGradientLayer()
        gradientLayer.type = .axial
        gradientLayer.colors = [firstColor, secondColor]
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint =  endpoint
        self.layer.addSublayer(gradientLayer)
        
        if let buttonImage = self.imageView {
            self.bringSubviewToFront(buttonImage)
        }
        
        setTitleColor(UIColor.black, for: .normal)
    }
}

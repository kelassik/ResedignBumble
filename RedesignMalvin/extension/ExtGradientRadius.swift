//
//  ExtGradientRadius.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 01/06/23.
//

import Foundation
import UIKit

extension UIView {
    
    func addBorder(radius: CGFloat, width: CGFloat, borderColor: CGColor) {
     
        self.layer.cornerRadius = radius
        self.layer.borderWidth = width
        self.layer.borderColor = borderColor
        
        
    }
}

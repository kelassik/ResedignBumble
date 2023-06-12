//
//  ExtensionRadius.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 05/06/23.
//

import Foundation
import UIKit


extension UIView {
    func makeCornerRadius(_ radius: CGFloat, maskedCorner: CACornerMask?) {
        layer.cornerRadius = radius
        layer.maskedCorners = maskedCorner ?? [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        clipsToBounds = true
    }
}

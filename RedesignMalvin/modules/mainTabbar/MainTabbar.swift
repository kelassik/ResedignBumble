//
//  MainTabbar.swift
//  RedesignMalvin
//
//  Created by yopa bagus on 06/06/23.
//

import Foundation
import UIKit


class MainTabbar: UITabBarController {
    
    let firstVC = RouterMain().setUpView()
    let secondVC = ViewLike()
    let thirdVC = ViewMassage()
    let forthVC = ViewProfile()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        firstVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "icon-home"), selectedImage: UIImage(named: "icon-home"))
        secondVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "icon-like"), selectedImage: UIImage(named: "icon-like"))
        thirdVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "icon-massage"), selectedImage: UIImage(named: "icon-massage"))
        forthVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "icon-profile"), selectedImage: UIImage(named: "icon-profile"))
        
        viewControllers = [firstVC, secondVC, thirdVC, forthVC]
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        
        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        } else {
            // Fallback on earlier versions
        }

        var tabFrame = tabBar.frame
        tabFrame.size.height = 100
        tabFrame.origin.y = view.frame.size.height - 100
        tabBar.frame = tabFrame
    }
}

extension MainTabbar: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // Handle tab bar selection
    }
}

//
//  UserTabBarController.swift
//  UIKitM8
//
//  Created by Gustaf Hallberg on 2024-05-19.
//

import UIKit

class UserTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTabs()

    }
    
    private func configureTabs() {
        let vc1 = HemViewController()
        let vc2 = SökViewController()
        let vc3 = ProfilViewController()
        
        // Set Tab Images
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.tabBarItem.image = UIImage(systemName: "person")
        
        // Set Title
        
        vc1.tabBarItem.title = "Hem"
        vc2.tabBarItem.title = "Sök"
        vc3.tabBarItem.title = "Profil"
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .lightGray
        
        setViewControllers([nav1, nav2, nav3], animated: true)
    }
    

}

//
//  TabBarController.swift
//  LoginScreen
//
//  Created by Руслан Мингалиев on 06.10.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        // Do any additional setup after loading the view.
    }
    
}

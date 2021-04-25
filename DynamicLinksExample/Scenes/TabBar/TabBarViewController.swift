//
//  TabBarViewController.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    var coordinator: TabBarCoordinator?
    
    override func viewDidLoad() {
        super .viewDidLoad()
        createTabBarController()
    }
    
    func createTabBarController() {
        let firstTab = UINavigationController()
        firstTab.setViewControllers([HomeViewController()], animated: true)
        
        let secondTab = SecondTabViewController()
        
        setViewControllers([firstTab, secondTab], animated: true)
        
        firstTab.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        secondTab.tabBarItem = UITabBarItem(title: "Second Tab", image: UIImage(systemName: "scribble"), tag: 1)
        
    }
}

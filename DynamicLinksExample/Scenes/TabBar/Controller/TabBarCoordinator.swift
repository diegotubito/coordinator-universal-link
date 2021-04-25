//
//  TabBarCoordinator.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit

class TabBarCoordinator: Coordinator {
    var firstTab: UINavigationController!
    var secondTab: UIViewController!
    weak var tabBarController: TabBarViewController?
    
    enum Destination {
        case FirstTap(FirstTapType)
        case SecondTab
        
        enum FirstTapType {
            case Home
            case Detail
        }
    }
    
    init(tabBarController: TabBarViewController?) {
        self.tabBarController = tabBarController
    }
    
    func navigate(to: Destination) {
        if tabBarController == nil { start() }
        switch to {
        case .FirstTap(.Home):
            let index = 0
            self.tabBarController?.selectedIndex = index
            break
        case .FirstTap(.Detail):
            let index = 0
            self.tabBarController?.selectedIndex = index
            let homeCoordinator = HomeCoordinator(navigationController: firstTab)
            homeCoordinator.start()
            homeCoordinator.navigate(to: .Detail)
        case .SecondTab:
            let index = 1
            self.tabBarController?.selectedIndex = index
            break
        }
    }
    
    func start() {
        firstTab = UINavigationController()
        firstTab.setViewControllers([HomeViewController()], animated: true)
        secondTab = SecondTabViewController()
        tabBarController?.setViewControllers([firstTab, secondTab], animated: true)
        firstTab.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        secondTab.tabBarItem = UITabBarItem(title: "Second Tab", image: UIImage(systemName: "scribble"), tag: 1)
    }
}


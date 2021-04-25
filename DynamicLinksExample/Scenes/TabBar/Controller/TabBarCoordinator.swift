//
//  TabBarCoordinator.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit

class TabBarCoordinator: Coordinator {
    weak var tabBarController: TabBarViewController?
    var homeCoordinator: HomeCoordinator!
    
    enum Destination {
        case FirstTab(FirstTabFlow)
        case SecondTab
        
        enum FirstTabFlow {
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
        case .FirstTab(.Home):
            let index = 0
            self.tabBarController?.selectedIndex = index
            break
        case .FirstTab(.Detail):
            let index = 0
            self.tabBarController?.selectedIndex = index
            homeCoordinator.navigate(to: .Detail)
        case .SecondTab:
            let index = 1
            self.tabBarController?.selectedIndex = index
            break
        }
    }
    
    func start() {
        let firstTab: UINavigationController = setupFirstTap()
        let secondTab: UIViewController = setupSecondTap()
        tabBarController?.setViewControllers([firstTab, secondTab], animated: true)
    }
    
    private func setupFirstTap() -> UINavigationController{
        var newTab: UINavigationController!
        newTab = UINavigationController()
        let homeViewController = HomeViewController()
        homeCoordinator = HomeCoordinator(navigationController: newTab)
        homeViewController.coordinator = homeCoordinator
        homeCoordinator.start()
        newTab.setViewControllers([homeViewController], animated: true)
        newTab.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        return newTab
    }
    
    private func setupSecondTap() -> UIViewController {
        var newTab: UIViewController!
        newTab = SecondTabViewController()
        newTab.tabBarItem = UITabBarItem(title: "Second Tab", image: UIImage(systemName: "scribble"), tag: 1)
        
        return newTab
    }
}


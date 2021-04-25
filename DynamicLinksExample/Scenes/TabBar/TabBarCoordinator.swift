//
//  TabBarCoordinator.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit

class TabBarCoordinator: Coordinator {
   
    enum Destination: CaseIterable {
        case HomeTab
        case SecondTab
    }
    
    weak var tabBarController: TabBarViewController?
    weak var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func navigate(to: Destination) {
        if tabBarController == nil { start() }
        switch to {
        case .HomeTab:
            let index = 0
            self.tabBarController?.selectedIndex = index
            break
        case .SecondTab:
            let index = 1
            self.tabBarController?.selectedIndex = index
            break
        }
    }
    
    func start() {
        tabBarController = TabBarViewController()
        tabBarController?.createTabBarController()
        tabBarController?.modalPresentationStyle = .fullScreen
        tabBarController?.coordinator = self
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}


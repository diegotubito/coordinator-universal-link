//
//  OnboardingCoordinator.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//
import UIKit

class OnboardingCoordinator: Coordinator {
    
    enum Destination {
        case FirstViewController
        case SecondViewController
        case TabBar
    }
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func navigate(to: Destination) {
        switch to {
        case .FirstViewController:
            let viewController = OnboardingFirstPageViewController()
            viewController.coordinator = self
            navigationController?.pushViewController(viewController, animated: true)
            break
        case .SecondViewController:
            let viewController = OnboardingSecondPageViewController()
            viewController.coordinator = self
            navigationController?.pushViewController(viewController, animated: true)
            break
        case .TabBar:
            let tabbar = TabBarViewController()
            let tabbbarCoordinator = TabBarCoordinator(tabBarController: tabbar)
            navigationController?.view.window?.rootViewController = tabbar
            tabbbarCoordinator.start()
            break
        }
    }
    
    func start() {
        let vc1 = OnboardingFirstPageViewController()
        vc1.coordinator = self
        navigationController?.setViewControllers([vc1], animated: true)
    }
    
}


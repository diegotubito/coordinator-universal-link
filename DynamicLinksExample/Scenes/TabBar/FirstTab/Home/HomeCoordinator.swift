//
//  HomeCoordinator.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 25/04/2021.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    enum Destination {
        case Home
        case Detail
    }
    
    func navigate(to: Destination) {
        switch to {
        case .Home:
            break
        case .Detail:
            let detailViewController = DetailViewController()
            detailViewController.coordinator = self
            navigationController?.pushViewController(detailViewController, animated: true)
            break
        }
    }
    
    func start() {
        let homeViewController = HomeViewController()
        homeViewController.coordinator = self
        navigationController?.viewControllers = [homeViewController]
    }
}

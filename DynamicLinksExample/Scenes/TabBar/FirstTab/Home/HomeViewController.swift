//
//  HomeViewController.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
    var coordinator: HomeCoordinator!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        view.backgroundColor = .blue
        title = "Home"
        createButton()
        detailButton()
    }
   
    private func createButton() {
        let button = UIButton(frame: .zero)
        button.setTitle("Go to Onboarding", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -8),
            button.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    private func detailButton() {
        let button = UIButton(frame: .zero)
        button.setTitle("Detail View Controller", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(routeToDetail), for: .touchDown)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -50),
            button.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    @objc func buttonTapped() {
        let navController = UINavigationController()
        let onboardingCoordinator = OnboardingCoordinator(navigationController: navController)
        onboardingCoordinator.start()
        view.window?.rootViewController = navController
    }
    
    @objc func routeToDetail() {
        coordinator.navigate(to: .Detail)
    }
}

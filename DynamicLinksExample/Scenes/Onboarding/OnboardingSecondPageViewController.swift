//
//  OnboardingSecondPageViewController.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit


class OnboardingSecondPageViewController: UIViewController {
    var coordinator: OnboardingCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
    }
    
    private func createButton() {
        let button = UIButton(frame: .zero)
        button.setTitle("Finish Onboarding", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.topAnchor.constraint(equalTo: guide.topAnchor, constant: 8),
            button.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    @objc func buttonTapped() {
        coordinator?.navigate(to: .TabBar)
    }
}

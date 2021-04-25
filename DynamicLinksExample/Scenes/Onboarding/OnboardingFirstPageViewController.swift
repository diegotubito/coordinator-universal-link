//
//  OnboardingViewController.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit

class OnboardingFirstPageViewController: UIViewController  {
    var coordinator: OnboardingCoordinator?
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .blue
        title = "First Page"
        
        createButton()
    }
    
    private func createButton() {
        let button = UIButton(frame: .zero)
        button.setTitle("Go to Second Page", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    @objc func buttonTapped() {
        coordinator?.navigate(to: .SecondViewController)
    }
}

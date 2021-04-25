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
        let button = UIButton(frame: CGRect(x: 0, y: 200, width: 100, height: 50))
        button.setTitle("First View Controller", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
    }
    
    @objc func buttonTapped() {
        coordinator?.navigate(to: .TabBar)
    }
}
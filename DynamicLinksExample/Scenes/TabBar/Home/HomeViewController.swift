//
//  HomeViewController.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        view.backgroundColor = .blue
        title = "Home"
        
        createButton()
    }
    
    @IBAction func onboardTapped(_ sender: Any) {
        
    }
    
    private func createButton() {
        let button = UIButton(frame: CGRect(x: 0, y: view.frame.height - 200, width: 100, height: 50))
        button.setTitle("got to second tap", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
    }
    
    @objc func buttonTapped() {
        let tabbarCoordinator = TabBarCoordinator(window: <#UIWindow?#>)
        
    }
}

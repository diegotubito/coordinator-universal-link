//
//  DeatilViewController.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 25/04/2021.
//

import UIKit

class DetailViewController: UIViewController {
    var coordinator: HomeCoordinator!
 
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .black
        title = "Detail View Controller"
    }
}

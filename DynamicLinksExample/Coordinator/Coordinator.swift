//
//  Coordinator.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 24/04/2021.
//

import UIKit

protocol Coordinator {
    associatedtype Destination
    func navigate(to: Destination)
    func start()
}

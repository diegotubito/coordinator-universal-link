//
//  AppDelegate.swift
//  DynamicLinksExample
//
//  Created by David Diego Gomez on 23/04/2021.
//

import Firebase
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: OnboardingCoordinator!
    var navigationController: UINavigationController!
    
    var tabBarCoordinator: TabBarCoordinator!
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
  
        setupWindow()
        tabBarCoordinator = TabBarCoordinator(window: window)
        tabBarCoordinator.navigate(to: .SecondTab)
        
        return true
    }
    
    private func setupNavigationController() {
        self.navigationController = UINavigationController()
    }
    
    private func setupCoordinator() {
        coordinator = OnboardingCoordinator(navigationController: navigationController)
    }
    
    private func setupWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navigationController
        self.window = window
        self.window?.makeKeyAndVisible()
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        // 1
        guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
              let url = userActivity.webpageURL,
              let components = URLComponents(url: url, resolvingAgainstBaseURL: true) else { return false }
        
//        // 2
//        if let computer = ItemHandler.sharedInstance.items
//            .filter({ $0.path == components.path}).first {
//            presentDetailViewController(computer)
//            return true
//        }
//
//        // 3
//        if let webpageUrl = URL(string: "http://rw-universal-links-final.herokuapp.com") {
//            application.open(webpageUrl)
//            return false
//        }
        
        return false
    }
//    
//    func presentDetailViewController(_ computer: Computer) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        
//        guard
//            let detailVC = storyboard
//                .instantiateViewController(withIdentifier: "DetailController")
//                as? ComputerDetailController,
//            let navigationVC = storyboard
//                .instantiateViewController(withIdentifier: "NavigationController")
//                as? UINavigationController
//        else { return }
//        
//        detailVC.item = computer
//        navigationVC.modalPresentationStyle = .formSheet
//        navigationVC.pushViewController(detailVC, animated: true)
//    }
//    
}


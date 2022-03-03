//
//  AppDelegate.swift
//  NavigationTr
//
//  Created by Anton Rusyaev on 03.03.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarController = UITabBarController()
        self.window?.rootViewController = tabBarController
        
        let feedVC = FeedViewController()
        feedVC.view.backgroundColor = .yellow
        
        
        let profileVC = ProfileViewController()
        profileVC.view.backgroundColor = .lightGray

        
        let feedNC = UINavigationController(rootViewController: feedVC)
        let profileNC = UINavigationController(rootViewController: profileVC)
        feedNC.tabBarItem = UITabBarItem(title: "Feed", image: .checkmark, tag: 0)
        profileNC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "icons8-game_controller"), tag: 1)
        tabBarController.viewControllers = [feedNC, profileNC]
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = .red
        
//        nav1.setViewControllers([viewController], animated: true)
        
        self.window?.makeKeyAndVisible()

        return true
    }

}


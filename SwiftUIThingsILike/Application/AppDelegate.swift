//
//  AppDelegate.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: (any AppCoordinatorType)?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        let tabBarCoordinator = TabBarCoordinator(window: window)
        appCoordinator = AppCoordinator(window: window, tabBarCoordinator: tabBarCoordinator)
        appCoordinator?.start()

        return true
    }
}


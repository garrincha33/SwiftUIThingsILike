//
//  AppDelegate.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import UIKit
import SwiftUI


class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        let tabBarFactory = TabBarViewFactory()
        let tabBarCoordinator = TabBarCoordinator(tabBarFactory: tabBarFactory)
        let tabBarRouter = TabBarRouter(tabBarCoordinator: tabBarCoordinator)
        
        appCoordinator = AppCoordinator(router: tabBarRouter)
        appCoordinator?.start()
        
        window.rootViewController = UIHostingController(rootView: appCoordinator?.rootView)
        window.makeKeyAndVisible()

        return true
    }
}



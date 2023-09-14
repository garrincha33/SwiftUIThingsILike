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
    let coordinatorManager = CoordinatorManager()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        coordinatorManager.setupCoordinator(for: window)
        return true
    }
}




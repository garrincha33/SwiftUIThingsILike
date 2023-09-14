//
//  SwiftUIThingsILikeApp.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI

@main
struct SwiftUIThingsILikeApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var appCoordinator: AppCoordinator {
        let window = UIWindow(frame: UIScreen.main.bounds)
        appDelegate.window = window
        
        let tabBarCoordinator = TabBarCoordinator(window: window)
        let coordinator = AppCoordinator(window: window, tabBarCoordinator: tabBarCoordinator)
        coordinator.start()
        
        return coordinator
    }

    var body: some Scene {
        WindowGroup {
            if let rootView = appCoordinator.rootView {
                rootView
            }
        }
    }
}








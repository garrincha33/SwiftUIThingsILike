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
    @ObservedObject private var appCoordinator: AppCoordinator = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarFactory = TabBarViewFactory()
        let tabBarCoordinator = TabBarCoordinator(tabBarFactory: tabBarFactory)
        let tabBarRouter = TabBarRouter(tabBarCoordinator: tabBarCoordinator)
        let coordinator = AppCoordinator(router: tabBarRouter)
        coordinator.start()
        return coordinator
    }()

    var body: some Scene {
        WindowGroup {
            if let rootView = appCoordinator.rootView {
                rootView
            }
        }
    }
}









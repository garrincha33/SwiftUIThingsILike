//
//  SceneDelegate.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        
        let tabBarFactory = TabBarViewFactory()
        let tabBarCoordinator = TabBarCoordinator(tabBarFactory: tabBarFactory)
        let tabBarRouter = TabBarRouter(tabBarCoordinator: tabBarCoordinator)
        
        appCoordinator = AppCoordinator(router: tabBarRouter)
        appCoordinator?.start()
        
        window.rootViewController = UIHostingController(rootView: appCoordinator?.rootView)
    }
    
}

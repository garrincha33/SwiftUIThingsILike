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
    var appCoordinator: (any AppCoordinatorType)?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        
        let tabBarCoordinator = TabBarCoordinator(window: window)
        appCoordinator = AppCoordinator(window: window, tabBarCoordinator: tabBarCoordinator)
        appCoordinator?.start()
    }
}

//
//  CoordinatorManager.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import Foundation
import UIKit
import SwiftUI

class CoordinatorManager {
    var appCoordinator: AppCoordinator?
    
    func setupCoordinator(for window: UIWindow) {
        let tabBarFactory = TabBarViewFactory()
        let tabBarCoordinator = TabBarCoordinator(tabBarFactory: tabBarFactory)
        let tabBarRouter = TabBarRouter(tabBarCoordinator: tabBarCoordinator)
        
        appCoordinator = AppCoordinator(router: tabBarRouter)
        appCoordinator?.start()
        
        window.rootViewController = UIHostingController(rootView: appCoordinator?.rootView)
        window.makeKeyAndVisible()
    }
}

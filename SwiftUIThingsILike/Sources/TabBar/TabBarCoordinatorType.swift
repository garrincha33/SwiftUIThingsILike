//
//  TabBarCoordinatorType.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import Foundation
import UIKit
import SwiftUI

final class AppCoordinator: ObservableObject, AppCoordinatorType {
    let window: UIWindow
    private let tabBarCoordinator: TabBarCoordinator
    @Published var rootView: AnyView?
    
    init(window: UIWindow, tabBarCoordinator: TabBarCoordinator) {
        self.window = window
        self.tabBarCoordinator = tabBarCoordinator
    }
    
    func start() {
        tabBarCoordinator.start()
        rootView = AnyView(tabBarCoordinator.rootView)
        window.makeKeyAndVisible()
    }
}


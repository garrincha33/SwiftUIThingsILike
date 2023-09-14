//
//  TabBarRouter.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//
import Foundation
import SwiftUI

class TabBarRouter: RouterType {
    private let tabBarCoordinator: TabBarCoordinatorType

    init(tabBarCoordinator: TabBarCoordinatorType) {
        self.tabBarCoordinator = tabBarCoordinator
    }

    func start() {
        tabBarCoordinator.start()
    }

    var rootView: AnyView? {
        tabBarCoordinator.rootView
    }
}

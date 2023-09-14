//
//  TabBarCoordinator.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI


class TabBarCoordinator<Factory: TabBarViewFactoryType>: TabBarCoordinatorType {
    private let tabBarFactory: Factory

    init(tabBarFactory: Factory) {
        self.tabBarFactory = tabBarFactory
    }

    private(set) var rootView: AnyView?

    func start() {
        rootView = AnyView(tabBarFactory.make())
    }
}



//
//  AppCoordinator.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import Foundation
import SwiftUI

class AppCoordinator: CoordinatorType, ObservableObject {
    private let router: RouterType
    @Published var rootView: AnyView?

    init(router: RouterType) {
        self.router = router
    }

    func start() {
        router.start()
        rootView = router.rootView
    }
}

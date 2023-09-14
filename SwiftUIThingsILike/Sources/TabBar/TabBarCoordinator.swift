//
//  TabBarCoordinator.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI

protocol TabBarCoordinatorType: ObservableObject {
    var rootView: AnyView? { get set }
    func start()
}


final class TabBarCoordinator: ObservableObject, TabBarCoordinatorType {
    let window: UIWindow
    @Published var rootView: AnyView?
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        rootView = AnyView(TabBarViewFactory().make())
    }
}

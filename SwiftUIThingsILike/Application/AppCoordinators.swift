//
//  AppCoordinators.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import Foundation
import UIKit
import SwiftUI

protocol AppCoordinatorType: ObservableObject {
    var rootView: AnyView? { get set }
    func start()
}



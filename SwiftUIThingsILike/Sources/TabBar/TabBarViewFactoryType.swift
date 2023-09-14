//
//  TabBarViewFactoryType.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import Foundation
import SwiftUI

protocol TabBarViewFactoryType {
    associatedtype ContentView: View
    func make() -> ContentView
}

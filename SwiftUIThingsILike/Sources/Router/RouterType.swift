//
//  RouterType.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI

protocol RouterType {
    func start()
    var rootView: AnyView? { get }
}

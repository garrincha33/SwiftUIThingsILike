//
//  Widget.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 15/09/2023.
//

import SwiftUI

protocol Widget: View {
    associatedtype ViewModelType: ObservableObject
    var viewModel: ViewModelType { get }
}


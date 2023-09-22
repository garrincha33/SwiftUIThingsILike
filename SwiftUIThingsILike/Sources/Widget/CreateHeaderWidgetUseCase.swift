//
//  CreateHeaderWidgetUseCase.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 19/09/2023.
//

import Foundation
import SwiftUI

protocol CreateHeaderWidgetUseCase {
    func execute(for topic: Topic) -> AnyView
}

struct DefaultCreateHeaderWidgetUseCase: CreateHeaderWidgetUseCase {
    func execute(for topic: Topic) -> AnyView {
        let viewModel = HeaderViewModel(title: topic.rawValue, subtitle: "All Topics for \(topic.rawValue)")
        return AnyView(HeaderWidget(viewModel: viewModel))
    }
}

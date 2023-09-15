//
//  WidgetFactory.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 15/09/2023.
//

import SwiftUI

protocol WidgetFactory {
    func makeHeaderWidget(for topic: Topic) -> AnyView
}

struct DefaultWidgetFactory: WidgetFactory {
    func makeHeaderWidget(for topic: Topic) -> AnyView {
        let viewModel = HeaderViewModel(title: topic.rawValue, subtitle: "All about \(topic.rawValue)")
        return AnyView(HeaderWidget(viewModel: viewModel))
    }
}


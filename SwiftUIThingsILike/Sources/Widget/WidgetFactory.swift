//
//  WidgetFactory.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 15/09/2023.
//

import SwiftUI

protocol WidgetFactory {
    var createHeaderWidgetUseCase: CreateHeaderWidgetUseCase { get }
    func makeHeaderWidget(for topic: Topic) -> AnyView
}

extension WidgetFactory {
    func makeHeaderWidget(for topic: Topic) -> AnyView {
        return createHeaderWidgetUseCase.execute(for: topic)
    }
}

struct DefaultWidgetFactory: WidgetFactory {
    let createHeaderWidgetUseCase: CreateHeaderWidgetUseCase = DefaultCreateHeaderWidgetUseCase()
}



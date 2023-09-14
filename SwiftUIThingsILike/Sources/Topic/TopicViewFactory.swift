//
//  TopicViewFactory.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI

protocol TopicViewFactoryType {
    associatedtype TopicViewType: View
    func make(topic: Topic) -> TopicViewType
}

struct TopicViewFactory: TopicViewFactoryType {
    func make(topic: Topic) -> some View {
        TopicView(topic: topic)
    }
}

//
//  TopicViewFactory.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI

protocol TopicViewFactoryType {
    func make(topic: Topic) -> AnyView
}

struct TopicViewFactory: TopicViewFactoryType {
    func make(topic: Topic) -> AnyView {
        let topicScrollViewFactory = TopicScrollViewFactory()
        return topicScrollViewFactory.make(topic: topic)
    }
}


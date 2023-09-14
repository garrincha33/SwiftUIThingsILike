//
//  TopicScrollViewFactory.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI

protocol TopicScrollViewFactoryType {
    func make(topic: Topic) -> AnyView
}

struct TopicScrollViewFactory: TopicScrollViewFactoryType {
    func make(topic: Topic) -> AnyView {
        // Sample data
        let sampleContents = [
            TopicContent(title: "Sample 1", image: Image(systemName: "photo"), description: "This is a sample description."),
            TopicContent(title: "Sample 2", image: Image(systemName: "photo"), description: "This is another sample description.")
        ]
        return AnyView(TopicScrollView(topic: topic, contents: sampleContents))
    }
}


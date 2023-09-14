//
//  TabBarViewFactory.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI

protocol TabBarViewFactoryType {
    associatedtype TabBarView: View
    func make() -> TabBarView
}

struct TabBarViewFactory: TabBarViewFactoryType {
    func make() -> some View {
        TabView {
            ForEach(Topic.allCases, id: \.self) { topic in
                TopicViewFactory().make(topic: topic)
                    .tabItem {
                        Text(topic.rawValue)
                    }
            }
        }
    }
}

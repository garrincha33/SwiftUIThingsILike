//
//  TabBarViewFactory.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import SwiftUI

struct TabBarViewFactory: TabBarViewFactoryType {
    func make() -> some View {
        TabView {
            ForEach(Topic.allCases, id: \.self) { topic in
                TopicView(topic: topic)
                    .tabItem {
                        Text(topic.rawValue)
                    }
            }
        }
    }
}



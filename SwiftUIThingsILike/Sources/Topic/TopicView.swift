//
//  TopicView.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

import Foundation
import SwiftUI

struct TopicView: View {
    let topic: Topic
    private let widgetFactory: WidgetFactory

    init(topic: Topic, widgetFactory: WidgetFactory = DefaultWidgetFactory()) {
        self.topic = topic
        self.widgetFactory = widgetFactory
    }

    var body: some View {
        VStack {
            widgetFactory.makeHeaderWidget(for: topic)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<10) { _ in
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding()
                    }
                }
            }
        }
    }
}



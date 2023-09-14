//
//  TopicScrollView.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//


import SwiftUI

struct TopicScrollView: View {
    let topic: Topic
    let contents: [TopicContent]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(contents, id: \.title) { content in
                    TopicContentView(content: content)
                }
            }
            .padding()
        }
    }
}


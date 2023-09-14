//
//  TopicContentView.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 14/09/2023.
//

// TopicContentView.swift
import SwiftUI

struct TopicContentView: View {
    let content: TopicContent

    var body: some View {
        VStack {
            content.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text(content.title)
                .font(.headline)
            Text(content.description)
                .font(.subheadline)
                .multilineTextAlignment(.center)
        }
        .padding()
        .background(Color.secondary.opacity(0.1))
        .cornerRadius(10)
    }
}


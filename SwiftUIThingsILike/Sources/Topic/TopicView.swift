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

    var body: some View {
        Text("Content for \(topic.rawValue)")
    }
}


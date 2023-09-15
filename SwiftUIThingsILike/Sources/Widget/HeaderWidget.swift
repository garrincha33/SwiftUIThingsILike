//
//  HeaderWidget.swift
//  SwiftUIThingsILike
//
//  Created by Richard Price on 15/09/2023.
//

import SwiftUI

struct HeaderWidget: Widget {
    
    @ObservedObject var viewModel: HeaderViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
                .font(.largeTitle)
                .padding()
            Text(viewModel.subtitle)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}

class HeaderViewModel: ObservableObject {
    
    @Published var title: String
    @Published var subtitle: String
    
    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
    
}

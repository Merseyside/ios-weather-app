//
//  Text.swift
//  WeatherApp
//
//  Created by Ivan on 19.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI

struct TitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .lineSpacing(8)
            .foregroundColor(.label)
    }
}

struct ContentStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .lineSpacing(4)
            .foregroundColor(.secondaryLabel)
    }
}

extension Text {
    func textStyle<Style: ViewModifier>(_ style: Style) -> some View {
        ModifiedContent(content: self, modifier: style)
    }
}

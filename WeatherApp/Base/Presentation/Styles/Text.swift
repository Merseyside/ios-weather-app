//
//  Text.swift
//  WeatherApp
//
//  Created by Ivan on 19.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI

struct NavLinkStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.navLink)
            .foregroundColor(.systemBlue)
    }
}

struct PageTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.pageTitle)
            .foregroundColor(.darkText)
    }
}

struct PageTitleCenteredStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.pageTitleCentered)
            .foregroundColor(.darkText)
    }
}

struct ItemTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.itemTitle)
            .foregroundColor(.darkText)
    }
}

struct SecondaryItemTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.secondaryItemTitle)
            .foregroundColor(.darkText)
    }
}

struct TimestampStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.timestamp)
            .foregroundColor(.darkText)
    }
}

struct BodyStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.darkText)
    }
}

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

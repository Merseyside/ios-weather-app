//
//  Button.swift
//  WeatherApp
//
//  Created by Ivan on 19.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI

struct OutlineStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 44, minHeight: 44)
            .padding(.horizontal)
            .foregroundColor(Color.accentColor)
            .background(RoundedRectangle(cornerRadius: 8).stroke(Color.accentColor))
    }
}

struct FillStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 44, minHeight: 44)
            .font(Font.title)
            .padding(.horizontal)
            .foregroundColor(configuration.isPressed ? .gray : .white)
            .background(Color.accentColor)
            .cornerRadius(8)
    }
}

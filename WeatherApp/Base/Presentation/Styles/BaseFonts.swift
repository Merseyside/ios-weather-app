//
//  Font.swift
//  WeatherApp
//
//  Created by Ivan on 20.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI

extension CGFloat {
    static let smallestTextSize: CGFloat = 10
    static let smallTextSize: CGFloat = 13
    static let textSize: CGFloat = 15
    static let titleTextSize: CGFloat = 17
    static let doubleTitleTextSize: CGFloat = 34
    
    static let buttonTextSize: CGFloat = 17
    static let segmentedButtonTextSize: CGFloat = 13
}

extension Font {
    
    static let tabTitle = Font.system(size: .smallestTextSize, weight: .medium, design: .default)
    
    static let dialogSecondary = Font.system(size: .smallTextSize, weight: .regular, design: .default)
    
    static let secondaryItemTitle = Font.system(size: .textSize, weight: .regular, design: .default)
    static let timestamp = Font.system(size: .textSize, weight: .regular, design: .default)
    static let body = Font.system(size: .textSize, weight: .regular, design: .default)
    static let bodySecondary = Font.system(size: .smallTextSize, weight: .regular, design: .default)
    
    static let itemTitle = Font.system(size: .titleTextSize, weight: Font.Weight.regular, design: Font.Design.default)
    static let navLink = Font.system(size: .titleTextSize, weight: .regular, design: .default)
    static let pageTitleCentered = Font.system(size: .titleTextSize, weight: .semibold, design: .default)
    static let textInput = Font.system(size: .titleTextSize, weight: .semibold, design: .default)
    static let dialogTitle = Font.system(size: .titleTextSize, weight: .medium, design: .default)
    
    static let pageTitle = Font.system(size: .doubleTitleTextSize, weight: .bold, design: .default)
    
    /* Buttons*/
    static let button = Font.system(size: .buttonTextSize, weight: .semibold, design: .default)
    static let segmentedButton = Font.system(size: .segmentedButtonTextSize, weight: .semibold, design: .default)
    
    static let action = Font.system(size: .buttonTextSize, weight: .regular, design: .default)
    static let defaultAction = Font.system(size: .buttonTextSize, weight: .medium, design: .default)
}

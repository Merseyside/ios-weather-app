//
//  PageIndicator.swift
//  WeatherApp
//
//  Created by Ivan on 19.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI

// MARK: - Dot Indicator -
struct DotIndicator: View {
    let minScale: CGFloat = 1
    let maxScale: CGFloat = 1.1
    let minOpacity: Double = 0.5
    
    let pageIndex: Int
    @Binding var selectedPage: Int
    
    var body: some View {
        
        Button(action: {
            self.selectedPage = self.pageIndex
        }) {
            Circle()
                .scaleEffect(
                    selectedPage == pageIndex
                        ? maxScale
                        : minScale
            )
                .animation(.spring())
                .foregroundColor(
                    selectedPage == pageIndex
                        ? Color.white
                        : Color.white.opacity(minOpacity)
            )
        }
        
    }
}

// MARK: - Page Indicator -
struct PageIndicator: View {
    // Constants
    private let spacing: CGFloat = 8
    private let diameter: CGFloat = 4
    
    // Settings
    let numPages: Int
    @Binding var selectedIndex: Int
    
    init(_ numPages: Int, _ currentPage: Binding<Int>) {
        self.numPages = numPages
        self._selectedIndex = currentPage
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: spacing) {
                ForEach((0..<numPages)) {
                    DotIndicator(
                        pageIndex: $0,
                        selectedPage: self.$selectedIndex
                    ).frame(
                        width: self.diameter,
                        height: self.diameter
                    )
                }
            }
        }
    }
}

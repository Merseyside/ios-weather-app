//
//  ContentView.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ExtractedView()
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, World!")
        }
    }
}

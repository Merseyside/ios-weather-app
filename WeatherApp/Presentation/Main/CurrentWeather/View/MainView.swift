//
//  CurrentWeatherView.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI
import Resolver

struct MainView: View {
    
    @ObservedObject
    var viewModel: MainViewModel = Resolver.resolve()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                if (viewModel.currentWeatherList != nil) {
                    ForEach(0..<viewModel.currentWeatherList!.count) { index in
                        CurrentWeatherRowView(viewModel.currentWeatherList![index])
                    }
                }
            }.background(Color.yellow)
        }.background(Color.black)
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

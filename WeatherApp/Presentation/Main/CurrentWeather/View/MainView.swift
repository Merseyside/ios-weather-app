//
//  CurrentWeatherView.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI
import Resolver
import SwiftUIPager

struct MainView: View {
    
    @ObservedObject
    var viewModel: MainViewModel = Resolver.resolve()
    
    @State var page: Int = 0
    
    var body: some View {
        if (viewModel.currentWeatherList != nil) {
            Pager(page: $page, data: viewModel.currentWeatherList!, content: { data in
                CurrentWeatherRowView(data)
            }).background(Color.black)
        } else {
            Text("Loading").onAppear(perform: viewModel.refresh)
        }        
    }
    
    func makePageView() -> some View {
        return PageView(viewModel.currentWeatherList!
            .map { weather in CurrentWeatherRowView(weather)}
        )
        .aspectRatio(3/2, contentMode: .fit)
        .background(Color.red)
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

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
        VStack(alignment: .leading) {
            if (viewModel.currentWeatherList != nil) {
                makeCurrentWeatherView()
            } else {
                Text("Loading").onAppear(perform: viewModel.loadData)
            }
        }.background(Color.background)
    }
    
    func makePageView() -> some View {
        return PageView(viewModel.currentWeatherList!
            .map { weather in CurrentWeatherRowView(weather)}
        )
        .aspectRatio(3/2, contentMode: .fit)
        .background(Color.red)
    }
    
    func makeCurrentWeatherView() -> some View {
        return VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            PageIndicator(viewModel.currentWeatherList!.count, $page)
                .padding(EdgeInsets(top: .veryLargeInset, leading: .defaultInset, bottom: .defaultInset, trailing: .defaultInset))
            
            Pager(page: $page, data: viewModel.currentWeatherList!, content: { data in
                CurrentWeatherRowView(data)
            })
            .itemSpacing(10)
            .rotation3D()
        })
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

//
//  CurrentWeatherView.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI
import Resolver

struct CurrentWeatherView: View {
    
    @ObservedObject
    var viewModel: MainViewModel = Resolver.resolve()
    
    var body: some View {
        VStack{
            ScrollView(.horizontal){

            }
        }
        List(content: content)
            .onAppear(perform: viewModel.refresh)
            .navigationBarTitle(viewModel.currentWeather?.place ?? "loading")
            .listStyle(GroupedListStyle())
    }
}

private extension CurrentWeatherView {
    func content() -> some View {
        return Text("ejwe")
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView()
    }
}

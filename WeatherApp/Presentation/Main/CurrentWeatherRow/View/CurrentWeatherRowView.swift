//
//  CurrentWeatherRowView.swift
//  WeatherApp
//
//  Created by Ivan on 17.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import SwiftUI

struct CurrentWeatherRowView: View {
    
    private var viewModel: CurrentWeatherRowViewModel!
    
    init(_ currentWeather: CurrentWeather) {
        self.viewModel = makeViewModel(currentWeather)
    }
    
    var body: some View {
        return VStack {
            Text(viewModel.getPlace())
            //Text("6:30 p.m")
        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
        .background(Color.red)
    }
}

struct CurrentWeatherRowView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherRowView(CurrentWeather.getExampleModel())
    }
}

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
                .font(.pageTitle)
                .foregroundColor(Color.white)
               
            //Text("6:30 p.m")
        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .topLeading)
        .padding(.all)
        .background(Color.background)
    }
}

struct CurrentWeatherRowView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherRowView(CurrentWeather.getExampleModel())
    }
}

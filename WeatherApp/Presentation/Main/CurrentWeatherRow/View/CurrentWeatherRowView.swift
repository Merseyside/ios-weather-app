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
        return VStack() {
            getTopView()
            Spacer()
        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .padding(.all)
        .background(Color.background)
    }
    
    func getTopView() -> some View {
        return HStack {
            VStack {
                HStack {
                    Text(viewModel.getPlace())
                        .font(.pageTitle)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                
                HStack {
                    Text(viewModel.getTime())
                        .font(.body)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
            }
        }
    }
}

struct CurrentWeatherRowView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherRowView(CurrentWeather.getExampleModel())
    }
}

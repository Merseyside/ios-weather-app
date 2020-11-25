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
            VStack(alignment: .leading) {
                getTopView()
                Spacer()
                getTempView()
                getConditionWeather()
            }
            
            Divider().foregroundColor(Color.red).padding(.all, 20)
            VStack {
                
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100, alignment: .leading)
        }
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
                        .font(.bodySecondary)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
            }
        }
    }
    
    func getTempView() -> some View {
        return Text(viewModel.getTemp())
            .font(Font.system(size: .temperatureTextSize, weight: Font.Weight.light, design: Font.Design.default))
            .foregroundColor(Color.white)
    }
    
    func getConditionWeather() -> some View {
        return HStack(alignment: .center) {
            Image(viewModel.getConditionIcon())
            
            Text(viewModel.getConditionText())
                .font(.itemTitle)
                .foregroundColor(Color.white)
        }
    }
}

struct CurrentWeatherRowView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherRowView(CurrentWeather.getExampleModel())
    }
}

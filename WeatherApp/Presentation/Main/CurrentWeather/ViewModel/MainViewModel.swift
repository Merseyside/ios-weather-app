//
//  MainViewModel.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class MainViewModel: ObservableObject {
    
    let currentWeatherUseCase: GetCurrentWeatherUseCase
    
    @Published var currentWeatherList: [CurrentWeather]? = nil
    
    init(currentWeatherUseCase: GetCurrentWeatherUseCase) {
        self.currentWeatherUseCase = currentWeatherUseCase
        
        getCurrentWeather()
    }
    
    private func getCurrentWeather() {
        currentWeatherUseCase.execute(
            params: Params(cities: ["moscow", "london", "berlin"]),
            onValue: { weatherList in
                self.currentWeatherList = weatherList
                print(weatherList.first)
            },
            onError: { error in },
            onFinish: {
                print("Finished!")
            }
        )
    }
    
    func refresh() {
        //getCurrentWeather()
    }
}

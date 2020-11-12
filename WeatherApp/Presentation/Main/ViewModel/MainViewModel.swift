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
    
    @Published var currentWeather: CurrentWeather? = nil
    
    init(currentWeatherUseCase: GetCurrentWeatherUseCase) {
        print("ViewModel created")
        self.currentWeatherUseCase = currentWeatherUseCase
        
        getCurrentWeather()
    }
    
    private func getCurrentWeather() {
        currentWeatherUseCase.execute(
            params: Params(city: "moscow"),
            onValue: { weather in
                self.currentWeather = weather
                print(weather)
            },
            onError: { error in },
            onFinish: {
                print("Finished!")
            }
        )
    }
}

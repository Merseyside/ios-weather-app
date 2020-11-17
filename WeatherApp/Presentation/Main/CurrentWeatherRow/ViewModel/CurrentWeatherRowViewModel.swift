//
//  CurrentWeatherRowViewModel.swift
//  WeatherApp
//
//  Created by Ivan on 17.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class CurrentWeatherRowViewModel {
    
    private let currentWeather: CurrentWeather
    
    init(_ currentWeather: CurrentWeather) {
        self.currentWeather = currentWeather
    }
    
    func getPlace() -> String {
        return currentWeather.place
    }
}

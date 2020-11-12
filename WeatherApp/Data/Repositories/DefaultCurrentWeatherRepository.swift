//
//  CurrentWeatherRepository.swift
//  WeatherApp
//
//  Created by Ivan on 10.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

class DefaultCurrentWeatherRepository {
    
    private let weatherService: WeatherService
    
    init(weatherService: WeatherService) {
        self.weatherService = weatherService
    }
}

extension DefaultCurrentWeatherRepository: CurrentWeatherRepository {
    
    func getCurrentWeather(forCity city: String) -> AnyPublisher<CurrentWeather, Error> {
        return weatherService.getCurrentWeather(forCity: city)
            .map { $0.toDomain() }
            .eraseToAnyPublisher()
    }
}

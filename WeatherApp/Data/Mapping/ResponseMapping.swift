//
//  Mapping.swift
//  WeatherApp
//
//  Created by Ivan on 10.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//


class ResponseMapping {
    
    
}

extension CurrentWeatherResponse {
    
    func toDomain() -> CurrentWeather {
        return .init(
            lastUpdated: lastUpdate,
            tempC: tempC,
            feelsLikeC: feelsLikeC,
            condition: condition,
            windSpeed: windSpeed,
            humidity: humidity
        )
    }
}

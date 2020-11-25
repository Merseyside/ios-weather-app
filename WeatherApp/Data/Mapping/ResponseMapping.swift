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
    
    func toDomain(id: Int) -> CurrentWeather {
        return .init(
            id: id,
            lastUpdated: current.lastUpdated,
            isDay: current.isDay != 0,
            localTime: location.localTime,
            timeZone: location.timeZone,
            place: location.place,
            tempC: current.tempC,
            feelsLikeC: current.feelsLikeC,
            condition: current.condition.conditionText,
            conditionCode: current.condition.conditionCode,
            windSpeed: current.windSpeed,
            humidity: current.humidity
        )
    }
}

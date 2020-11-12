//
//  CurrentWEather.swift
//  WeatherApp
//
//  Created by Ivan on 10.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

struct CurrentWeather {
    let lastUpdated: UInt32
    let tempC: Float
    let feelsLikeC: Float
    let condition: String
    let windSpeed: Float
    let humidity: Int
    
    init(
        lastUpdated: UInt32,
        tempC: Float,
        feelsLikeC: Float,
        condition: String,
        windSpeed: Float,
        humidity: Int
    ) {
        self.lastUpdated = lastUpdated
        self.tempC = tempC
        self.feelsLikeC = feelsLikeC
        self.condition = condition
        self.windSpeed = windSpeed
        self.humidity = humidity
    }
    
}

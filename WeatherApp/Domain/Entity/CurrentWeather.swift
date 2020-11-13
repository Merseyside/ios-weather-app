//
//  CurrentWEather.swift
//  WeatherApp
//
//  Created by Ivan on 10.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

struct CurrentWeather {
    let lastUpdated: UInt32
    let localTime: UInt32
    let place: String
    let tempC: Float
    let feelsLikeC: Float
    let condition: String
    let windSpeed: Float
    let humidity: Int
    
    init(
        lastUpdated: UInt32,
        localTime: UInt32,
        place: String,
        tempC: Float,
        feelsLikeC: Float,
        condition: String,
        windSpeed: Float,
        humidity: Int
    ) {
        self.lastUpdated = lastUpdated
        self.localTime = localTime
        self.place = place
        self.tempC = tempC
        self.feelsLikeC = feelsLikeC
        self.condition = condition
        self.windSpeed = windSpeed
        self.humidity = humidity
    }
    
}

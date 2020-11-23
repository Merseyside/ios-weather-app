//
//  CurrentWEather.swift
//  WeatherApp
//
//  Created by Ivan on 10.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

struct CurrentWeather: Equatable, Identifiable {
    typealias ObjectIdentifier = Int
    
    let id: ObjectIdentifier
    let lastUpdated: UInt32
    let localTime: UInt32
    let timeZone: String
    let place: String
    let tempC: Float
    let feelsLikeC: Float
    let condition: String
    let windSpeed: Float
    let humidity: Int
    
    init(
        id: Int,
        lastUpdated: UInt32,
        localTime: UInt32,
        timeZone: String,
        place: String,
        tempC: Float,
        feelsLikeC: Float,
        condition: String,
        windSpeed: Float,
        humidity: Int
    ) {
        self.id = id
        self.lastUpdated = lastUpdated
        self.localTime = localTime
        self.timeZone = timeZone
        self.place = place
        self.tempC = tempC
        self.feelsLikeC = feelsLikeC
        self.condition = condition
        self.windSpeed = windSpeed
        self.humidity = humidity
    }
    
    static func getExampleModel() -> CurrentWeather {
        return CurrentWeather(id: 0, lastUpdated: 34629832, localTime: 734672, timeZone: "UTC", place: "Novosibirsk", tempC: 24.6, feelsLikeC: 24.1, condition: "Солнечно", windSpeed: 34, humidity: 32)
    }
    
}

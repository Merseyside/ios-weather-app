//
//  CurrentWEather.swift
//  WeatherApp
//
//  Created by Ivan on 10.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

struct CurrentWeather: Equatable, Identifiable {
    static func == (lhs: CurrentWeather, rhs: CurrentWeather) -> Bool {
        return lhs.id == rhs.id
    }
    
    typealias ObjectIdentifier = Int
    
    let id: ObjectIdentifier
    let lastUpdated: UInt32
    let isDay: Bool
    let localTime: UInt32
    let timeZone: String
    let place: String
    let tempC: Float
    let conditionText: String
    let conditionCode: Int
    let conditionList: [ConditionItem]
    
    init(
        id: Int,
        lastUpdated: UInt32,
        isDay: Bool,
        localTime: UInt32,
        timeZone: String,
        place: String,
        tempC: Float,
        condition: String,
        conditionCode: Int,
        conditionList: [ConditionItem]
    ) {
        self.id = id
        self.lastUpdated = lastUpdated
        self.isDay = isDay
        self.localTime = localTime
        self.timeZone = timeZone
        self.place = place
        self.tempC = tempC
        self.conditionText = condition
        self.conditionCode = conditionCode
        self.conditionList = conditionList
    }
    
    static func getExampleModel() -> CurrentWeather {
        return CurrentWeather(id: 0, lastUpdated: 34629832, isDay: true, localTime: 734672, timeZone: "UTC", place: "Novosibirsk", tempC: 24.6, condition: "Солнечно", conditionCode: 1000, conditionList: [ConditionItem(title: "humidity", value: 32, unit: "%")])
    }
    
}

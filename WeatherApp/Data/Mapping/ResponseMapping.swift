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
        
        var conditionList = [ConditionItem]()
        
        conditionList.append(ConditionItem(title: "Feels", value: current.feelsLikeC, unit: "C"))
        conditionList.append(ConditionItem(title: "Humidity", value: current.humidity, unit: "%"))
        conditionList.append(ConditionItem(title: "Wind", value: current.windSpeed, unit: "kmp/h"))
        conditionList.append(ConditionItem(title: "Clouds", value: current.cloudCoverage, unit: "%"))
        
        return .init(
            id: id,
            lastUpdated: current.lastUpdated,
            isDay: current.isDay != 0,
            localTime: location.localTime,
            timeZone: location.timeZone,
            place: location.place,
            tempC: current.tempC,
            condition: current.condition.conditionText,
            conditionCode: current.condition.conditionCode,
            conditionList: conditionList
        )
    }
}

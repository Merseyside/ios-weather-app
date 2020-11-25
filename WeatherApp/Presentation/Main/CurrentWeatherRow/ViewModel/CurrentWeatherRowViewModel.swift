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
    private let weatherConditionModels: [WeatherConditionsModel]
    
    init(
        _ currentWeather: CurrentWeather,
        _ weatherConditionModels: [WeatherConditionsModel]) {
        self.currentWeather = currentWeather
        self.weatherConditionModels = weatherConditionModels
    }
    
    func getPlace() -> String {
        return currentWeather.place
    }
    
    func getTime() -> String {
        let date = Date(timeIntervalSince1970: Double(currentWeather.localTime))

        let dayTimePeriodFormatter = DateFormatter()
        dayTimePeriodFormatter.dateFormat = "hh:mm a - EEEE, dd MMM YY"
        dayTimePeriodFormatter.timeZone = TimeZone(identifier: currentWeather.timeZone)

        return dayTimePeriodFormatter.string(from: date)
    }
    
    func getTemp() -> String {
        return "\(Int(currentWeather.tempC))°"
    }
    
    func getConditionIcon() -> String {
        let model = weatherConditionModels.findFirst { $0.code == currentWeather.conditionCode }
        
        var icon: String = "1000"
        if model != nil {
            icon = String(model!.icon)
            if (!currentWeather.isDay) { icon.append("-night")}
        }
        
        return icon
    }
    
    func getConditionText() -> String {
        return currentWeather.conditionText
    }
}

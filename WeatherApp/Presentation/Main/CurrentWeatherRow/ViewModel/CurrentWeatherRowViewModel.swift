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
    
    func getTime() -> String {
        let date = Date(timeIntervalSince1970: Double(currentWeather.localTime))

        let dayTimePeriodFormatter = DateFormatter()
        //dayTimePeriodFormatter.dateFormat = "MMM dd YYYY hh:mm a"
        dayTimePeriodFormatter.dateFormat = "hh:mm a - EEEE, dd MMM YY"
        dayTimePeriodFormatter.timeZone = TimeZone(identifier: currentWeather.timeZone)

        return dayTimePeriodFormatter.string(from: date)
    }
}

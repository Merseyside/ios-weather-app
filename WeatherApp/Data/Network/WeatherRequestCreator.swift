//
//  WeatherRequestCreator.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class WeatherRequestCreator {
    
    struct WeatherAPI {
        static let scheme = "https"
        static let apiKey = "0e1b4ff7410b48f686475827200911"
        static let host = "api.weatherapi.com"
        static let path = "/v1"
    }
    
    func makeRealtimeForecastComponents(
      withCity city: String
    ) -> URLComponents {
        var components = URLComponents()
        components.scheme = WeatherAPI.scheme
        components.host = WeatherAPI.host
        components.path = WeatherAPI.path + "/current.json"
        
        components.queryItems = [
            URLQueryItem(name: "key", value: WeatherAPI.apiKey),
            URLQueryItem(name: "q", value: city),
            URLQueryItem(name: "lang", value: "ru")
        ]
        
        return components
    }

}

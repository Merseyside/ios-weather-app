//
//  CurrentWeatherResponse.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

struct CurrentWeatherResponse: BaseWeatherResponse {
    enum CodingKeys: String, CodingKey {
        case lastUpdated = "last_updated"
        case tempC = "temp_c"
        case feelsLikeC = "feelslike_c"
        case condition = "condition:text"
        case windSpeed = "wind_kmp"
        case humidity
    }
    
    let lastUpdate: UInt32
    let tempC: Float
    let feelsLikeC: Float
    let condition: String
    let windSpeed: Float
    let humidity: Int
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        lastUpdate = try values.decode(UInt32.self, forKey: .lastUpdated)
        tempC = try values.decode(Float.self, forKey: .tempC)
        feelsLikeC = try values.decode(Float.self, forKey: .feelsLikeC)
        condition = try values.decode(String.self, forKey: .condition)
        windSpeed = try values.decode(Float.self, forKey: .windSpeed)
        humidity = try values.decode(Int.self, forKey: .humidity)
    }
}

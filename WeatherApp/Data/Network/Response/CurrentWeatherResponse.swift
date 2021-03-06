//
//  CurrentWeatherResponse.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

struct CurrentWeatherResponse: BaseWeatherResponse {
    let location: Location
    let current: Current
}

extension CurrentWeatherResponse {
    struct Location: Decodable {
        enum CodingKeys: String, CodingKey {
            case localTime = "localtime_epoch"
            case place = "name"
            case timeZone = "tz_id"
        }
        
        let localTime: UInt32
        let timeZone: String
        let place: String
        
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            
            localTime = try values.decode(UInt32.self, forKey: .localTime)
            timeZone = try values.decode(String.self, forKey: .timeZone)
            place = try values.decode(String.self, forKey: .place)
        }
    }
}

extension CurrentWeatherResponse {
    struct Current: Decodable {
        enum CodingKeys: String, CodingKey {
            case lastUpdated = "last_updated_epoch"
            case isDay = "is_day"
            case tempC = "temp_c"
            case feelsLikeC = "feelslike_c"
            case condition
            case windSpeed = "wind_kph"
            case humidity
            case cloudCoverage = "cloud"
        }
        
        let lastUpdated: UInt32
        let isDay: Int
        let tempC: Float
        let feelsLikeC: Float
        let condition: Condition
        let windSpeed: Float
        let humidity: Int
        let cloudCoverage: Int
    
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            
            lastUpdated = try values.decode(UInt32.self, forKey: .lastUpdated)
            isDay = try values.decode(Int.self, forKey: .isDay)
            tempC = try values.decode(Float.self, forKey: .tempC)
            feelsLikeC = try values.decode(Float.self, forKey: .feelsLikeC)
            condition = try values.decode(Condition.self, forKey: .condition)
            windSpeed = try values.decode(Float.self, forKey: .windSpeed)
            humidity = try values.decode(Int.self, forKey: .humidity)
            cloudCoverage = try values.decode(Int.self, forKey: .cloudCoverage)
        }
    }
}

extension CurrentWeatherResponse {
    struct Condition: Decodable {
       
        enum CodingKeys: String, CodingKey {
            case conditionText = "text"
            case conditionCode = "code"
           
        }
        
        let conditionText: String
        let conditionCode: Int
        
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            
            conditionText = try values.decode(String.self, forKey: .conditionText)
            conditionCode = try values.decode(Int.self, forKey: .conditionCode)
        }
    }
}

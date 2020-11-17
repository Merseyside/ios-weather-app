//
//  WeatherRequestCreator.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Resolver

class WeatherEndpoint: Endpoint {
    
    struct WeatherAPI: API {
        var scheme: String = "https"
        var host: String = "api.weatherapi.com"
        var path: String = "/v1"
        
        static let apiKey = "0e1b4ff7410b48f686475827200911"
    }
    
    init() {
        super.init(api: WeatherAPI())
    }
    
    func makeRealtimeForecastComponents(
      withCity city: String
    ) -> Request {
        let request = newRequest(httpMethod: .get, apiMethod: "current.json")
        
        let dictionary = [
            "key": WeatherAPI.apiKey,
            "q": city,
            "lang": "ru"]
        
        request.addQueryParams(params: dictionary)
        return request
    }
}

//
//  Api.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

class DefaultWeatherService: WeatherService {
    
    private let requestCreator = WeatherRequestCreator()
    private let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
}

extension DefaultWeatherService {
    func getCurrentWeather(
        forCity city: String
    ) -> AnyPublisher<CurrentWeatherResponse, Error> {
        return NetworkHelper.makeRequest(
            session: session,
            with: requestCreator.makeRealtimeForecastComponents(withCity: city)
        )
    }
}

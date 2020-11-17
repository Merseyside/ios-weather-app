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
    
    private let requestCreator = WeatherEndpoint()
    private let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
}

extension DefaultWeatherService {
    func getCurrentWeather(
        forCities list: [String]
    ) -> AnyPublisher<[CurrentWeatherResponse], Error> {
        let publishers = list.map { city in createCityPublisher(forCity: city) }
        return Publishers.zip(publishers)
    }
    
    private func createCityPublisher(forCity city: String) -> AnyPublisher<CurrentWeatherResponse, Error> {
        print(city)
        return NetworkHelper.makeRequest(
            session: session,
            with: requestCreator.makeRealtimeForecastComponents(withCity: city)
        )
    }
}

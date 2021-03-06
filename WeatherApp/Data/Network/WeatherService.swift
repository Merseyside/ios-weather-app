//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

protocol WeatherService {
    
    func getCurrentWeather(forCities list: [String]) -> AnyPublisher<[CurrentWeatherResponse], Error>

}

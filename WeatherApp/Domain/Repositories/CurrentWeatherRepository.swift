//
//  CurrentWeatherRepository.swift
//  WeatherApp
//
//  Created by Ivan on 10.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//


import Combine

protocol CurrentWeatherRepository {
    func getCurrentWeather(forCities list: [String]) -> AnyPublisher<[CurrentWeather], Error>
}

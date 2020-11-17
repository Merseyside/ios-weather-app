//
//  GetCurrentWeatherUseCase.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Combine

class GetCurrentWeatherUseCase : UseCase<[CurrentWeather], Params> {
    
    let repository: CurrentWeatherRepository
    
    init(repository: CurrentWeatherRepository) {
        self.repository = repository
    }
    
    override func buildPublisher(params: Params) -> AnyPublisher<[CurrentWeather], Error> {
        return repository.getCurrentWeather(forCities: params.cities)
    }
}

struct Params {
    let cities: [String]
}



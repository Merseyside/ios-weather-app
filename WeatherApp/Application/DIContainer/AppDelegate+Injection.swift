//
//  AppDIContainer.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        registerNetworkServices()
        registerAppServices()
        registerMainServices()
    }
    
    public static func registerAppServices() {
        register { GetCurrentWeatherUseCase(repository: resolve()) }
        register { DefaultCurrentWeatherRepository(weatherService: resolve()) as CurrentWeatherRepository }
        register { DefaultWeatherService(session: resolve()) as WeatherService }
    }
}

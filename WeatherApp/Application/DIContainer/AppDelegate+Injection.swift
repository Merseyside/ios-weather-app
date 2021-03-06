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
        register { GetCurrentWeatherUseCase(repository: resolve()) }.scope(application)
        register { DefaultCurrentWeatherRepository(weatherService: resolve()) as CurrentWeatherRepository }.scope(application)
        register { DefaultWeatherService(session: resolve()) as WeatherService }.scope(application)
        register { (getWeatherConditionsModel()!) as [WeatherConditionsModel] }.scope(application)
    }
    
    static func getWeatherConditionsModel() -> [WeatherConditionsModel]? {
        do {
            return try readJsonFileToCollection(resource: "weather_conditions")
        } catch {
            log("Couldn't decode json file")
            return nil
        }
    }
}

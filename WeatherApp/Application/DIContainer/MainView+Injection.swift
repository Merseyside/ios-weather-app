//
//  MainView+Injection.swift
//  WeatherApp
//
//  Created by Ivan on 12.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Resolver

extension Resolver {
    public static func registerMainServices() {
        register { MainViewModel(currentWeatherUseCase: resolve()) }
    }

}

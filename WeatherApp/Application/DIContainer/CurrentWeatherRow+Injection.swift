//
//  CurrentWeatherRow+Injection.swift
//  WeatherApp
//
//  Created by Ivan on 17.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Resolver

extension CurrentWeatherRowView: Resolving {
    
    func makeViewModel(_ currentWeather: CurrentWeather) -> CurrentWeatherRowViewModel {
        return CurrentWeatherRowViewModel(currentWeather, resolver.resolve())
    }
}

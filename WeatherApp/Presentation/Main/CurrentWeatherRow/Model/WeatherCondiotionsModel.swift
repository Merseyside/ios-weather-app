//
//  WeatherCondiotionsModel.swift
//  WeatherApp
//
//  Created by Ivan on 25.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class WeatherConditionsModel: Decodable {
    
    var code: Int
    var day: String
    var night: String
    var icon: Int
}

//
//  API.swift
//  WeatherApp
//
//  Created by Ivan on 13.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

protocol API {
    var scheme: String {get}
    var host: String {get}
    var path: String {get}
}

//
//  State.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

enum Error: Swift.Error {
    case parsing(_ message: String? = nil)
    case network(_ message: String? = nil, _ code: Int = 0)
}

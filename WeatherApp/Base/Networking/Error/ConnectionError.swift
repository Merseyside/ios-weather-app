//
//  NetworkError.swift
//  WeatherApp
//
//  Created by Ivan on 10.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

public protocol ConnectionError: Error {
    var isInternetConnectionError: Bool { get }
}

public extension Error {
    var isInternetConnectionError: Bool {
        guard let error = self as? ConnectionError, error.isInternetConnectionError else {
            return false
        }
        return true
    }
}

//
//  TypeError.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class TypeError: ErrorWithMessage {}
class UnknownError: ErrorWithMessage {}
class NoDataError: ErrorWithMessage {}
class SessionError: ErrorWithMessage {
    let response: HTTPURLResponse
    
    init(_ message: String? = nil, _ error: Error? = nil, response: HTTPURLResponse) {
        self.response = response
        
        super.init(message, error)
    }
}

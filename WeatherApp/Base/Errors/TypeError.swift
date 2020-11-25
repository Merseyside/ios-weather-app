//
//  TypeError.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class TypeError: ErrorWithMessage {
    override init(_ message: String? = "Type error", error: Error? = nil) {
        super.init(message)
    }
}
class UnknownError: ErrorWithMessage {
    override init(_ message: String? = "Unknown error", error: Error? = nil) {
        super.init(message)
    }
}
class NoDataError: ErrorWithMessage {
    override init(_ message: String? = "No data error", error: Error? = nil) {
        super.init(message)
    }
}
class NetworkError: ErrorWithMessage {
    override init(_ message: String? = "Network error", error: Error? = nil) {
        super.init(message)
    }
}
class ParsingError: ErrorWithMessage {
    override init(_ message: String? = "Parsing error", error: Error? = nil) {
        super.init(message)
    }
}
class SessionError: ErrorWithMessage {
    let response: HTTPURLResponse
    
    init(_ message: String? = nil, error: Error? = nil, response: HTTPURLResponse) {
        self.response = response
        
        super.init(message, error: error)
    }
}
class NoSuchFileError: ErrorWithMessage {
    override init(_ message: String? = "No such file error", error: Error? = nil) {
        super.init(message)
    }
}


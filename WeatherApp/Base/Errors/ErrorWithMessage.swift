//
//  ErrorWithMessage.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import UIKit

class ErrorWithMessage: Error {
    
    private let message: String?
    private let error: Error?
    
    init(
        _ message: String? = nil,
        error: Error? = nil
    ) {
        self.message = message
        self.error = error
    }
    
    func getFullError() -> String {
        return message ?? DEFAULT_MESSAGE + "/n" + ("\(String(describing: error))")
    }
    
    private let DEFAULT_MESSAGE = "Error has no message"
}

//
//  Handler.swift
//  WeatherApp
//
//  Created by Ivan on 12.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

func handleError(_ error: Error) {
    var message: String?
    
    if error is ErrorWithMessage {
        message = (error as! ErrorWithMessage).getFullError()
        
    } else {
        message = error.localizedDescription
    }
    print(message ?? "No massage error")
}

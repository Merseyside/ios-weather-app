//
//  Completion.swift
//  WeatherApp
//
//  Created by Ivan on 12.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

extension Subscribers.Completion {
    func error() throws -> Failure {
        if case let .failure(error) = self {
            return error
        }
        throw ErrorFunctionThrowsError.error
    }
    private enum ErrorFunctionThrowsError: Error { case error }
}

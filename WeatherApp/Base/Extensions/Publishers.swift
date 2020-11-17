//
//  Publishers.swift
//  WeatherApp
//
//  Created by Ivan on 16.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

extension Publishers {
    static func zip<T>(_ publishers: [AnyPublisher<T, Error>]) -> AnyPublisher<[T], Error> {
        return Publishers.Sequence<[AnyPublisher<T, Error>], Error>(
            sequence: publishers
        )
        .flatMap { $0 }
        .collect()
        .eraseToAnyPublisher()
    }
    
    static func zip<T>(_ publisher1: AnyPublisher<T, Error>, _ publisher2: AnyPublisher<T, Error>)
        -> AnyPublisher<[T], Error> {
        return Publishers.Sequence<[AnyPublisher<T, Error>], Error>(
            sequence: [publisher1, publisher2]
        )
        .flatMap { $0 }
        .collect()
        .eraseToAnyPublisher()
    }
    
    static func zip<T>(_ publisher1: AnyPublisher<T, Error>, _ publisher2: AnyPublisher<T, Error>, _ publisher3: AnyPublisher<T, Error>)
        -> AnyPublisher<[T], Error> {
        return Publishers.Sequence<[AnyPublisher<T, Error>], Error>(
            sequence: [publisher1, publisher2, publisher3]
        )
        .flatMap { $0 }
        .collect()
        .eraseToAnyPublisher()
    }
}


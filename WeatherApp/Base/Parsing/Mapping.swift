//
//  Mapping.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

func decode<T: Decodable>(
    _ data: Data,
    decoder: JSONDecoder = JSONDecoder()
) -> AnyPublisher<T, Error> {

    return Just(data)
        .decode(type: T.self, decoder: decoder)
        .mapError { error in
            ParsingError(error: error) }
        .eraseToAnyPublisher()
}

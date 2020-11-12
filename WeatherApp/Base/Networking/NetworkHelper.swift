//
//  NetworkHelper.swift
//  WeatherApp
//
//  Created by Ivan on 09.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

class NetworkHelper {
    static func makeRequest<T>(
        session: URLSession,
        with components: URLComponents
    ) -> AnyPublisher<T, Error> where T: Decodable {
        
        guard let url = components.url else {
            let error = NetworkError.unknown("Couldn't create URL")
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        return session.request(for: URLRequest(url: url))
    }
}



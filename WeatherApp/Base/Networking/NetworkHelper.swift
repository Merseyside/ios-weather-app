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
        with request: Request
    ) -> AnyPublisher<T, Error> where T: Decodable {
    
        guard let url = request.urlComponents.url else {
            let error = NetworkError("Couldn't create URL")
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method.rawValue
        
        return session.request(for: urlRequest, isLogging: true)
    }
}



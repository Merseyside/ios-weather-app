//
//  Session.swift
//  WeatherApp
//
//  Created by Ivan on 12.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

extension URLSession {
    
    func request<T: Decodable>(for url: URLRequest) -> AnyPublisher<T, Error> {
        return self.dataTaskPublisher(for: url)
            .tryMap({ (data, response) -> Data in
                if let response = response as? HTTPURLResponse,
                    (200..<300).contains(response.statusCode) == false {
                    throw SessionError(response: response)
                }
                
                return data
            })
            .decode(type: T.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        
    }
}

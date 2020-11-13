//
//  Endpoint.swift
//  WeatherApp
//
//  Created by Ivan on 13.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

public enum HTTPMethodType: String {
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
}

class Endpoint {
    let api: API
    var urlComponents: URLComponents? = nil
    
    init(api: API) {
        self.api = api
    }
}

extension Endpoint {
    
    func newRequest(httpMethod: HTTPMethodType, apiMethod: String) -> Request {
        let components = initUrlComponents(apiMethod)
        
        return Request(urlComponents: components, method: httpMethod)
    }
    
    private func initUrlComponents(_ apiMethod: String) -> URLComponents {
        var components = URLComponents()
        components.scheme = api.scheme
        components.host = api.host
        components.path = api.path + "/" + apiMethod
        
        return components
    }
}



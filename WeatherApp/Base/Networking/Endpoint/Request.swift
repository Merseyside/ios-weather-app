//
//  Request.swift
//  WeatherApp
//
//  Created by Ivan on 13.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class Request {
    
    var urlComponents: URLComponents
    let method: HTTPMethodType
    var headers = [String:String]()
    
    init(urlComponents: URLComponents, method: HTTPMethodType) {
        self.urlComponents = urlComponents
        self.method = method
    }
}

extension Request {
    func addQueryParams(params: Dictionary<String, String>) {
        let queryItems = urlComponents.queryItems
        
        let newItems = params.map{ (key: String, value: String) in
            return URLQueryItem(name: key, value: value)
        }
        
        urlComponents.queryItems = queryItems ?? EmptyCollection<URLQueryItem>() + newItems
    }
    
    func addQueryParam(name: String, value: String) {
        var queryItems = urlComponents.queryItems
        
        queryItems?.append(URLQueryItem(name: name, value: value))
        urlComponents.queryItems = queryItems
    }
    
    func addHeader(key: String, value: String) {
        headers[key] = value
    }
    
    func addHeaders(dictionary: [String:String]) {
        self.headers.merge(dict: dictionary)
    }
}

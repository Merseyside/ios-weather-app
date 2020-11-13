//
//  Dictionary.swift
//  WeatherApp
//
//  Created by Ivan on 13.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

extension Dictionary {
    mutating func merge(dict: [Key: Value]){
        for (k, v) in dict {
            updateValue(v, forKey: k)
        }
    }
}

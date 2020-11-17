//
//  Utils.swift
//  WeatherApp
//
//  Created by Ivan on 17.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

func isCollection<T>(_ object: T) -> Bool {
    let collectionsTypes = ["Set", "Array", "Dictionary"]
    let typeString = String(describing: type(of: object))

    for type in collectionsTypes {
        if typeString.contains(type) { return true }
    }
    return false
}

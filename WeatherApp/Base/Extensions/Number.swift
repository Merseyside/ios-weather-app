//
//  Number.swift
//  WeatherApp
//
//  Created by Ivan on 26.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

protocol Number {
    func toString() -> String
}

extension Int : Number {
    func toString() -> String {
        return String(self)
    }
}

extension Float : Number {
    func toString() -> String {
        return String(self)
    }
}

extension Double : Number {
    func toString() -> String {
        return String(self)
    }
}

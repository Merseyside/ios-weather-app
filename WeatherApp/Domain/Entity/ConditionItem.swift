//
//  ConditionItem.swift
//  WeatherApp
//
//  Created by Ivan on 26.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class ConditionItem: Identifiable {
    var id = UUID()
    let title: String
    let value: Number
    let unit: String
    
    init(
        title: String,
        value: Number,
        unit: String
    ) {
        self.title = title
        self.value = value
        self.unit = unit
    }
}

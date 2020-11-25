//
//  Array.swift
//  WeatherApp
//
//  Created by Ivan on 25.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

extension Array {
    
    func findFirst(predicate: (Element) -> Bool) -> Element? {
        return self.first (where: {predicate($0)})
    }
}

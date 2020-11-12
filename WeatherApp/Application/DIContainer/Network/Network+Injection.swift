//
//  Network+Injection.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Resolver

extension Resolver {
    public static func registerNetworkServices() {
        register { URLSession.shared as URLSession }
    }
}

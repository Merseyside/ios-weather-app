//
//  Logger.swift
//  WeatherApp
//
//  Created by Ivan on 17.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

class Logger {
    
    private var isEnabled: Bool = true
    private var isDebug: Bool = true
    
    static var shared: Logger = {
        return Logger()
    }()
    
    static func setEnabled(isEnabled: Bool) {
        shared.isEnabled = isEnabled
    }
    
    static func setDebug(isDebug: Bool) {
        shared.isDebug = isDebug
    }
    
    static func log(msg: Any? = "Empty msg") {
        if (isLogging()) {
            //print()
        }
    }
    
    private static func isLogging() -> Bool {
        return shared.isEnabled && shared.isDebug
    }
    
    private static func adoptMsg(msg: Any?) -> String {
        switch(msg) {
        
        
        case nil:
            return "nil"
        case is String:
            return msg as! String
//        case is Sequence:
//            (msg)
        case .some(_):
            return "\(msg)"
        }
        
    }
    
}

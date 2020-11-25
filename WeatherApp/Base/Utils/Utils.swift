//
//  Utils.swift
//  WeatherApp
//
//  Created by Ivan on 17.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation

func log(_ msg: Any) {
    Logger.log(msg)
}

func isCollection<T>(_ object: T) -> Bool {
    let collectionsTypes = ["Set", "Array", "Dictionary"]
    let typeString = String(describing: type(of: object))

    for type in collectionsTypes {
        if typeString.contains(type) { return true }
    }
    return false
}

func readJsonFile<T: Decodable>(resource: String) throws -> T {
    return try readJsonFileToType(typeOf: T.self, resource: resource)
}

func readJsonFileToCollection<T: Decodable>(resource: String) throws -> [T] {
    return try readJsonFileToType(typeOf: [T].self, resource: resource)
}

private func readJsonFileToType<T: Decodable>(typeOf: T.Type, resource: String) throws -> T {
    if let path = Bundle.main.path(forResource: resource, ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let decoder = JSONDecoder()
            return try decoder.decode(typeOf, from: data)
        } catch {
            Logger.log("Couldn't decode this file")
            throw ParsingError()
        }
    } else {
        throw NoSuchFileError()
    }
}

//
//  UseCase.swift
//  WeatherApp
//
//  Created by Ivan on 11.11.2020.
//  Copyright © 2020 Ivan. All rights reserved.
//

import Foundation
import Combine

public class UseCase<T, Params> {
    
    var cancellable: AnyCancellable? = nil
    
//    func executeAssigned<V>(
//        params: Params? = nil,
//        referenceKey: ReferenceWritableKeyPath<V, V.Output>,
//        object: NSObject
//    ) {
//        if !checkParams(params) { return }
//
//        cancellable = buildPublisher(params: params!)
//            .receive(on: DispatchQueue.main)
//            .assign(to: referenceKey, on: object)
//    }
    
    func execute(
        params: Params? = nil,
        onValue: @escaping (T) -> Void,
        onError: @escaping (Error) -> Void,
        onFinish: @escaping () -> Void = {}
    ) {
        if !checkParams(params) { return }
        
        cancellable = buildPublisher(params: params!)
            .subscribe(on: DispatchQueue.global())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] completion in
                guard self != nil else { return }
                switch completion {
                case .failure:
                    let error = try? completion.error()
                 
                    if error != nil {
                        handleError(error!)
                        onError(error!)
                    }
                case .finished:
                    onFinish()
                }
            }, receiveValue: { [weak self] value in
                guard self != nil else {
                    let error = NoDataError("Data is nil")
                    
                    handleError(error)
                    onError(error)
                    return
                }
                
                onValue(value)
            })
    }
    
    func buildPublisher(params: Params) -> AnyPublisher<T, Error> {
        fatalError("Must be overrided")
    }
    
    func cancel() {
        cancellable?.cancel()
    }
    
    private func checkParams(_ params: Params?) -> Bool {
        if (params == nil && Params.self != Void.self) {
            print("Use case with empty params have to have Void params type")
            return false
        }
        
        return true
    }
}

//
//  DataStoreDouble.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation
@testable import OpenWeatherApp

/// Testing Double for Data Stores
class DataStoreDouble: DataStoreType {

    var functionCallQueue = [String]()
    var lastFunctionCalled: String? {
        get {
            return functionCallQueue.last
        }
        set {
            guard let new = newValue else {
                return
            }
            functionCallQueue.append(new)
        }
    }
    var location: String?
    var information: [String: Any]?
    var error: DataStoreError?
    var observer: Observer?
    var observerId: String?

    func save(_ information: [String : Any], to location: String) {
        lastFunctionCalled = "save"
        self.location = location
        self.information = information
    }
    
    func delete(from location: String) {
        lastFunctionCalled = "delete"
        self.location = location
    }
    
    func get(from location: String, _ completion: @escaping (DataStoreError?, [String : Any]?) -> ()) {
        lastFunctionCalled = "get"
        self.location = location
        completion(error, information)
    }
    
    func add(observer: Observer, forLocation: String) -> (String, String) {
        self.lastFunctionCalled = "add"
        self.observer = observer
        self.location = forLocation
        
        return ("message", "id")
    }
    
    func remove(observerID: String, forLocation: String) {
        self.lastFunctionCalled = "remove"
        self.observerId = forLocation
    }
    
    
}

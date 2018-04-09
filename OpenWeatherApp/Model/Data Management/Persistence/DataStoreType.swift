//
//  DataStoreType.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Simple Data Store
protocol DataStoreType {
    func save(_ information: [String: Any], to location: String)
    func delete(from location: String)
    func get(from location: String, _ completion: @escaping (DataStoreError?, [String: Any]?) -> () )
    
    /// Adds an observer for changes occuring at the location
    /// Returns the messageID and the ObserverID
    func add(observer: Observer, forLocation: String) -> (String, String)
    
    /// Removes an Observer for a location
    func remove(observerID: String, forLocation: String)
}

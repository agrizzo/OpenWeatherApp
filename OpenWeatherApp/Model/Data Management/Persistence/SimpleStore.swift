//
//  SimpleStore.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// UserDefaults as DataStore
class SimpleStore:NSObject, DataStoreType {

    typealias ObserverList = [String: Observer]
    private var _observations = [String: ObserverList]()
    
    private let userDefaults = UserDefaults()
    
    
    func get(from location: String, _ completion: @escaping (DataStoreError?, [String : Any]?) -> ()) {
        let found = UserDefaults().dictionary(forKey: location)
        completion(nil,found)
    }
    
    func save(_ information: [String : Any], to location: String) {
        UserDefaults().set(information, forKey: location)
    }
    
    func delete(from location: String) {
        userDefaults.removeObject(forKey: location)
    }
    
    func add(observer: Observer, forLocation: String) -> (String, String) {
        
        let id = UUID().uuidString
        
        if _observations[forLocation] == nil {
            userDefaults.addObserver(self, forKeyPath: forLocation, options: .new, context: nil)
            
            _observations[forLocation] = [id: observer]
        } else {
            _observations[forLocation]![id] = observer
        }
        
        return (forLocation, id)
    }
    
    func remove(observerID: String, forLocation: String) {
        guard let _ = _observations[forLocation] else {return}

        _observations[forLocation]![observerID] = nil

        if _observations[forLocation]?.count == 0 {
            _observations[forLocation] = nil
            userDefaults.removeObserver(self, forKeyPath: forLocation)
        }
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        guard let keyPath = keyPath else { return }
        guard let inform = _observations[keyPath] else { return }

        inform.forEach { (_, observer) in
            observer.newObservation(message: keyPath)
        }
    }
    
    //TODO: Figure out why this cleanup isn't working
    deinit {
        print("#######")
        print("\(_observations)")
        _observations.forEach {(forkey, _) in
            userDefaults.removeObserver(self, forKeyPath: forkey)
        }
    }
    
}


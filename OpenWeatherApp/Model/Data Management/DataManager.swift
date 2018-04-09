//
//  DataManager.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Manages the retrieving and saving of data
class DataManager: DataManagerType {
    
    var hourlyForecasts: [ForecastType] {
        get {
            return _hourlyForecasts
        }
    }
    
    private var _hourlyForecasts: [ForecastType] {
        didSet {
            self.informObservers()
        }
    }
    private var _dataStore: DataStoreType!
    private let _forecastSaveKey: String = "ForecastSaveKey"
    private let _forecastMessage: String = UUID().uuidString
    private var _observers = [String: Observer]()
    private var _observerID: String?
    private var _observerMessageID: String?
    
    init(dataStore: DataStoreType? = nil) {
        _dataStore = dataStore ?? SimpleStore()
        _hourlyForecasts = [ForecastType]()

        let (message, observerID) = _dataStore.add(observer: self, forLocation: _forecastSaveKey)
        _observerMessageID = message
        _observerID = observerID
        
        getSaved()

    }
    
    func getForecast(from endpoint: ForecastRetrieverType) {
        endpoint.get { (error, forecasts) in
            if let error = error {
                print("getForecast: \(error)")
                return
            }
            
            guard let forecasts = forecasts else {
                return
            }
            
            self._hourlyForecasts = forecasts
            self.save(forecast: forecasts)
        }
    }

    func addForecast(observer: Observer) -> (String, String) {
        let id = UUID().uuidString
        _observers[id] = observer
        
        return (id, _forecastMessage)
    }
    
    func removeForecast(observerID: String) {
        _observers[observerID] = nil
    }
    
    deinit {
        guard let observerID = _observerID else { return }
        _dataStore.remove(observerID: observerID, forLocation: _forecastSaveKey)
    }

}

// MARK: - Observer
extension DataManager: Observer {
    func newObservation(message: String) {
        self.getSaved()
    }
}

// MARK: - Private Functions
private extension DataManager {
    func save(forecast: [ForecastType]){
        let encodableData = ForecastList(values: forecast.map {Forecast(forecast: $0)})

        guard let dataToSave = encodableData.getDictionary() else {
            return
        }
        _dataStore.save(dataToSave, to: _forecastSaveKey)
    }
    
    func getSaved(){
        
        _dataStore.get(from: _forecastSaveKey) { (error, data) in
            guard let data = data else { return }
            guard let decoded = ForecastList(dictionary: data) else { return }
            
            self._hourlyForecasts = decoded.values
        }
    }
    
    func informObservers(){
        _observers.forEach { (key, observer) in
            observer.newObservation(message: _forecastMessage)
        }
    }
    
}

//
//  DataManagerDouble.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Test Double
class DataManagerDouble: DataManagerType {

    
    var hourlyForecasts: [ForecastType]

    
    var lastFunctionCalled: String?
    var endPoint: ForecastRetrieverType?
    var observer: Observer?
    var observerID: String?
    let message = "message"


    init() {
        hourlyForecasts = [Forecast]()
    }
    
    func getForecast(from endpoint: ForecastRetrieverType) {
        self.lastFunctionCalled = "getForecast"
        self.endPoint = endpoint
    }
    
    func addForecast(observer: Observer) -> (String, String) {
        self.lastFunctionCalled = "addForecast"
        self.observer = observer
        return (message,"identifier")
    }
    
    func removeForecast(observerID: String) {
        self.lastFunctionCalled = "removeForecast"
        self.observerID = observerID
    }
    
}

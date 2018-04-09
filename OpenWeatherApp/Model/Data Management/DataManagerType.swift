//
//  DataManagerType.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Data Manager Type
protocol DataManagerType {
    
    /// Most recent forecast
    var hourlyForecasts: [ForecastType] { get }
    
    /// Retrieves the forecast from the ForecastRetriever
    func getForecast(from endpoint: ForecastRetrieverType)
    
    //TODO: Need better comments
    
    /// Be informed of forecast changes
    /// First returned value is the message that will be sent
    /// Second returned value is the unique identifer, to be used in the removeForecast(observer)
    func addForecast(observer: Observer) -> (String, String)
    
    /// Stop being informed of forecast changes
    func removeForecast(observerID: String)
}


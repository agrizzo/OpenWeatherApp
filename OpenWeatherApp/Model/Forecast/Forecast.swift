//
//  Forecast.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Forecast:
struct Forecast: ForecastType, Codable {
    var unitOfMeasure: UnitsOfMeasure
    var temperature: Int
    var overview: String
    var dateTime: Date
    
    init(unitOfMeasure: UnitsOfMeasure, temperature: Int, overview: String, dateTime: Date) {
        self.unitOfMeasure = unitOfMeasure
        self.temperature = temperature
        self.overview = overview
        self.dateTime = dateTime
    }
    
    init(forecast: ForecastType) {
        self.unitOfMeasure = forecast.unitOfMeasure
        self.temperature = forecast.temperature
        self.overview = forecast.overview
        self.dateTime = forecast.dateTime
    }
}

// MARK: - Equatable
extension Forecast: Equatable {
    static func == (lhs: Forecast, rhs: Forecast) -> Bool {
        return lhs.dateTime == rhs.dateTime
                && lhs.overview == rhs.overview
                && lhs.temperature == rhs.temperature
                && lhs.unitOfMeasure == rhs.unitOfMeasure
    }
    
}

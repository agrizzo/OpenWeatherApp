//
//  ForecastType.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Forecast Information
protocol ForecastType {
    var unitOfMeasure: UnitsOfMeasure { get }
    var temperature: Int { get }
    var overview: String { get }
    var dateTime: Date { get }
}

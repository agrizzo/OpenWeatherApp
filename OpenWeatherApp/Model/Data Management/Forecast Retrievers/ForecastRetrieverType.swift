//
//  ForecastRetrieverType.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Can retrieve a forecast
protocol ForecastRetrieverType {
    
    /// Gets the forecast
    func get(completion: @escaping (ForecastRetrieverError?, [ForecastType]?)->() )
}



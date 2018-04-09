//
//  ForecastRetrieverDouble.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Testing Double for Forecast Retrievers
class ForecastRetrieverDouble: ForecastRetrieverType {
    func get(completion: @escaping (ForecastRetrieverError?, [ForecastType]?) -> ()) {
        completion(error, forecasts)
    }
    
    var error: ForecastRetrieverError?
    var forecasts: [ForecastType]?
    
}

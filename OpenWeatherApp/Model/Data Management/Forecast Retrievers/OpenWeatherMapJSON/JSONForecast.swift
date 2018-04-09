//
//  JSONForecast.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Stores the result of the Open Weather Map's forecast api
struct JSONForecast: Decodable {
    
    var cod: String
    var message: Float
    var cnt: Int
    var list: [JSONHourlyForecast]
    var city: JSONCity

    /// Transforms the Open Weather Map's forecast to our type
    func transformToForecast() -> [Forecast] {
        
        let retValue: [Forecast] = self.list.map {
            return Forecast(unitOfMeasure: .imperial
                , temperature: Int($0.main.temp.rounded())
                , overview: $0.weather[0].description
                , dateTime: Date(timeIntervalSince1970: Double($0.dt)))
        }
        return retValue
    }

}

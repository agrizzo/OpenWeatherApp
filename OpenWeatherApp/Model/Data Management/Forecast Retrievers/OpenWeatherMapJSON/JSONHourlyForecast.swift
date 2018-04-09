//
//  JSONHourlyForecast.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON Hourly Forecast format
struct JSONHourlyForecast: Decodable {
    var dt: Int // Unix time
    var main: JSONMain
    var weather: [JSONWeather]
    var clouds: JSONClouds
    var wind: JSONWind
    var rain: JSONRain?
    var snow: JSONSnow?
    var sys: JSONsys
    var dt_txt: String // String representation of the date
}

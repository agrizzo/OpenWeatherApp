//
//  JSONMain.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's Main JSON structure
struct JSONMain: Decodable {
    
    var temp: Double
    var temp_min: Double
    var temp_max: Double
    var pressure: Double
    var sea_level: Double
    var grnd_level: Double
    var humidity: Int
    var temp_kf: Double
    
}

extension JSONMain: Equatable {
    static func == (lhs: JSONMain, rhs: JSONMain) -> Bool {
        return lhs.grnd_level == rhs.grnd_level
            && lhs.humidity == rhs.humidity
            && lhs.pressure == rhs.pressure
            && lhs.sea_level == rhs.sea_level
            && lhs.temp == rhs.temp
            && lhs.temp_min == rhs.temp_min
            && lhs.temp_max == rhs.temp_max
            && lhs.temp_kf == rhs.temp_kf

    }
}

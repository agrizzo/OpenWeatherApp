//
//  JSONWind.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON Wind format
struct JSONWind: Decodable {
    var speed: Double
    var deg: Double
}

// MARK: - Equatable
extension JSONWind: Equatable {
    static func == (lhs: JSONWind, rhs: JSONWind) -> Bool {
        return lhs.deg == rhs.deg
                && lhs.speed == rhs.speed
    }
}

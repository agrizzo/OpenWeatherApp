//
//  JSONCoord.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON Coord  format
struct JSONCoord: Decodable {
    var lat: Double
    var lon: Double
}

// MARK: - Equatable
extension JSONCoord: Equatable {
    static func == (lhs: JSONCoord, rhs: JSONCoord) -> Bool {
        return lhs.lat == rhs.lat
                && lhs.lon == rhs.lon
    }
}

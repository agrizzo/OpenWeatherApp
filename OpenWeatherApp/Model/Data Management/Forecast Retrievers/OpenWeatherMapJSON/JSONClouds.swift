//
//  JSONClouds.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON Clouds format
struct JSONClouds: Decodable {
    var all: Int
}

// MARK: - Equatable
extension JSONClouds: Equatable {
    static func == (lhs: JSONClouds, rhs: JSONClouds) -> Bool {
        return lhs.all == rhs.all
    }
}

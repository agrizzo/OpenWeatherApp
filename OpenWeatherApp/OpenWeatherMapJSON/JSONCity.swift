//
//  JSONCity.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON City format
struct JSONCity: Decodable {
    var id: Int
    var name: String
    var coord: JSONCoord
    var country: String
}

// MARK: - Equatable
extension JSONCity: Equatable {
    static func == (lhs: JSONCity, rhs: JSONCity) -> Bool {
        return lhs.coord == rhs.coord
                && lhs.country == rhs.country
                && lhs.id == rhs.id
                && lhs.name == rhs.name
    }
}

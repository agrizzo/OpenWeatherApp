//
//  JSONWeather.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON Weather format
struct JSONWeather: Decodable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

extension JSONWeather: Equatable {
    static func == (lhs: JSONWeather, rhs: JSONWeather) -> Bool {
        return lhs.id == rhs.id
            && lhs.main == rhs.main
            && lhs.description == rhs.description
            && lhs.icon == rhs.icon
    }
}

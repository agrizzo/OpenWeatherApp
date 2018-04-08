//
//  JSONRain.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON Rain format
struct JSONRain: Decodable {
    
    var h3: Double?
    
    private enum CodingKeys: String, CodingKey {
        case h3 = "3h"
    }
}

// MARK: - Equatable
extension JSONRain: Equatable {
    static func == (lhs: JSONRain, rhs: JSONRain) -> Bool {
        return lhs.h3 == rhs.h3
    }
}

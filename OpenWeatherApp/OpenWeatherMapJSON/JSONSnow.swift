//
//  JSONSnow.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON Snow format
struct JSONSnow: Decodable {
    var h3: Double?
    
    private enum CodingKeys: String, CodingKey {
        case h3 = "3h"
    }
}

// MARK: - Equatable
extension JSONSnow: Equatable {
    
    static func == (lhs: JSONSnow, rhs: JSONSnow) -> Bool {
        return lhs.h3 == rhs.h3
    }
}

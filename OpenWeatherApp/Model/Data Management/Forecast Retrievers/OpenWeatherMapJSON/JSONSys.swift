//
//  JSONSys.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Open Weather Map's JSON sys format
struct JSONsys: Decodable {
    var pod: String
}

// MARK: - Equatable
extension JSONsys: Equatable {
    
    static func == (lhs: JSONsys, rhs: JSONsys) -> Bool {
        return lhs.pod == rhs.pod
    }
}

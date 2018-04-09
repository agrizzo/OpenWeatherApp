//
//  UnitOfMeasure.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Standard Units of Measure that can be used.
enum UnitsOfMeasure: Int, CustomStringConvertible, Codable {
    case metric
    case imperial
    case scientific
    
    var description: String {
        get {
            switch self {
            case .imperial:
                return "Imperial"
            case .metric:
                return "Metric"
            case .scientific:
                return "Scientific"
            }
        }
    }
    
    /// Returns a formatted temperature
    func format(temperature: Int) -> String {
        
        switch self {
        case .imperial:
            return "\(temperature)℉"
        case .metric:
            return "\(temperature)℃"
        case .scientific:
            return "\(temperature)°K"
        }
    }
}

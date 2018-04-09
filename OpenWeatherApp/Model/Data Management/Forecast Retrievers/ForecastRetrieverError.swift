//
//  ForecastRetrieverErrors.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation
/// Errors that could occur
// TODO: - Need to write test coverage
enum ForecastRetrieverError: Error {
    case passThrough(Error)
    case jsonParse
    case dataNotReceived
}

extension ForecastRetrieverError: Equatable {
    static func == (lhs: ForecastRetrieverError, rhs: ForecastRetrieverError) -> Bool {
        
        switch (lhs, rhs) {
        case (.dataNotReceived, .dataNotReceived):
            return true
        case (.jsonParse, .jsonParse):
            return true
        case let (.passThrough(leftside), .passThrough(rightside)):
            return leftside.localizedDescription == rightside.localizedDescription //TODO: Need Better logic
        default:
            return false
        }
    }
}

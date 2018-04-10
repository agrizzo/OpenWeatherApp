//
//  ObserverDouble.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation
@testable import OpenWeatherApp

/// Observer Double
class ObserverDouble: Observer {
    var lastFunctionCalled: String?
    var message: String?
    
    func newObservation(message: String) {
        self.lastFunctionCalled = "newObservation"
        self.message = message
    }
}

//
//  Observer.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation


/// Generic Observer
protocol Observer {
    func newObservation(message: String)
}

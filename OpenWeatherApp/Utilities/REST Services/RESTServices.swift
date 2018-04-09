//
//  RESTServices.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Services needed to communicate with REST Services
protocol RESTServices {
    
    /// Performs the HTTP get
    func get(url: URL, completion: @escaping (Error?, URLResponse?, Data?)->())
}

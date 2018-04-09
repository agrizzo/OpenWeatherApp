//
//  SimpleREST.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Simple implementation of REST services
class SimpleREST: RESTServices {
    
    func get(url: URL, completion: @escaping (Error?, URLResponse?, Data?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            completion(error, response, data)
        }.resume()
    }
}

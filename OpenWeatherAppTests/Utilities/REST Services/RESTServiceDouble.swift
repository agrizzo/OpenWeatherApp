//
//  RESTServiceDouble.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation
@testable import OpenWeatherApp

/// Testing Double for REST Service
class RESTServiceDouble: RESTServices {
    var url: URL?
    var error: Error?
    var urlResponse: URLResponse?
    var data: Data?
    
    func get(url: URL, completion: @escaping (Error?, URLResponse?, Data?) -> ()) {
        self.url = url
        
        completion(self.error, self.urlResponse, self.data)
    }
}

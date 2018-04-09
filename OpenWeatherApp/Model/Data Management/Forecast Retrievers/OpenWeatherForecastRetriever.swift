//
//  ForecastRetriever.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import Foundation

/// Retreives the latest forecast
class OpenWeatherForecastRetriever: NSObject, ForecastRetrieverType {
    
    
    private var endPoint: URL = URL(string: "https://api.openweathermap.org/data/2.5/forecast?zip=07922,us&appid=00c04a625b0ca1254e33ef99c30fb07b&units=imperial")!
    
    private var restServices: RESTServices
    
    init(RESTService: RESTServices? = nil) {
        self.restServices = RESTService ?? SimpleREST()
    }

    func get(completion: @escaping (ForecastRetrieverError?, [ForecastType]?) -> ()) {
        
        restServices.get(url: endPoint) { (error, response, data) in
            
            var forecastError: ForecastRetrieverError?
            if let error = error {
                forecastError = ForecastRetrieverError.passThrough(error)
            }
            
            guard let data = data else  {
                forecastError = forecastError ?? ForecastRetrieverError.dataNotReceived
                completion(forecastError, nil)
                return
            }
            
            var information: JSONForecast?
            do {
                information = try JSONDecoder().decode(JSONForecast.self, from: data)
            } catch {
                print("\(String(data: data, encoding: .utf8))")
                forecastError = forecastError ?? ForecastRetrieverError.jsonParse
            }
            completion(forecastError, information?.transformToForecast())
            
        }
    }
        
}

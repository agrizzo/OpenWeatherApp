//
//  OpenWeatherForecastRetrieverTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class OpenWeatherForecastRetrieverTests: XCTestCase {
    
    var restDouble = RESTServiceDouble()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        restDouble = RESTServiceDouble()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGet() {
        // create a REST double
        
        let sut = OpenWeatherForecastRetriever(RESTService: restDouble)
        let getExpectation = expectation(description: "get function expectation testing url")
        sut.get { (error, forecasts) in
            
            getExpectation.fulfill()
        }
        
        wait(for: [getExpectation], timeout: 3)
        
        /// Was the REST service used?
        XCTAssertEqual(restDouble.url, URL(string: "https://api.openweathermap.org/data/2.5/forecast?zip=07922,us&appid=00c04a625b0ca1254e33ef99c30fb07b&units=imperial")!)
        

    }
    
    func testGetWithError(){
        
        restDouble.error = NSError(domain: "test Error", code: 120, userInfo: ["test": 120])
        let sut = OpenWeatherForecastRetriever(RESTService: restDouble)

        let getExpectation = expectation(description: "get function with error")
        sut.get { (error, forecasts) in
            guard let error = error else {
                XCTFail("Should have an error propagated")
                return
            }
            
            XCTAssertEqual(error, ForecastRetrieverError.passThrough(self.restDouble.error!))
            getExpectation.fulfill()
        }
        
        wait(for: [getExpectation], timeout: 3)
    }
    
    func testGetWithValues(){
        let sut = OpenWeatherForecastRetriever(RESTService: restDouble)
        restDouble.data = self.getSmallerJSON()
        
        let getExpectation = expectation(description: "get function with data")
        sut.get { (error, forecasts) in
            if let _ = error {
                XCTFail("Should NOT have an error")
                return
            }
            
            guard let forecasts = forecasts else {
                XCTFail("Forecast should not be nil")
                return
            }
            
            // TODO: - Implement an AnyForecastType struct for better testing
            XCTAssertEqual(forecasts[0].dateTime, Date(timeIntervalSince1970: 1523016000))
            
            getExpectation.fulfill()
        }
        
        wait(for: [getExpectation], timeout: 3)
    }
    
    func testGetWithBadValues(){
        let sut = OpenWeatherForecastRetriever(RESTService: restDouble)
        restDouble.data = "malformedJSON".data(using: .utf8)!
        
        let getExpectation = expectation(description: "get function with bad data")
        sut.get { (error, forecasts) in
            guard let error = error else {
                XCTFail("Should have an error")
                return
            }

            print("\(error)")
            
            XCTAssertEqual(error, ForecastRetrieverError.jsonParse)
            XCTAssertNil(forecasts)
            
            getExpectation.fulfill()
        }
        
        wait(for: [getExpectation], timeout: 3)
    }
    
}

extension OpenWeatherForecastRetrieverTests {
    func getSmallerJSON() -> Data {
        
        return """
                {
                "cod": "200",
                "message": 0.0049,
                "cnt": 40,
                "list": [
                    {
                        "dt": 1523016000,
                        "main": {
                            "temp": 36.28,
                            "temp_min": 31.71,
                            "temp_max": 36.28,
                            "pressure": 1019.02,
                            "sea_level": 1033.5,
                            "grnd_level": 1019.02,
                            "humidity": 70,
                            "temp_kf": 2.54
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 80
                        },
                        "wind": {
                            "speed": 3.98,
                            "deg": 162.505
                        },
                        "rain": {
                            "3h": 0.015
                        },
                        "snow": {
                            "3h": 0.4285
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 12:00:00"
                    },
                    {
                        "dt": 1523026800,
                        "main": {
                            "temp": 41.77,
                            "temp_min": 38.35,
                            "temp_max": 41.77,
                            "pressure": 1015.02,
                            "sea_level": 1029.35,
                            "grnd_level": 1015.02,
                            "humidity": 87,
                            "temp_kf": 1.9
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 7.02,
                            "deg": 156.002
                        },
                        "rain": {
                            "3h": 0.2025
                        },
                        "snow": {
                            "3h": 0.727
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 15:00:00"
                    },
                    {
                        "dt": 1523037600,
                        "main": {
                            "temp": 54.36,
                            "temp_min": 52.07,
                            "temp_max": 54.36,
                            "pressure": 1009.03,
                            "sea_level": 1023.19,
                            "grnd_level": 1009.03,
                            "humidity": 64,
                            "temp_kf": 1.27
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 64
                        },
                        "wind": {
                            "speed": 10.31,
                            "deg": 214.002
                        },
                        "rain": {
                            "3h": 0.0725
                        },
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 18:00:00"
                    },
                    {
                        "dt": 1523048400,
                        "main": {
                            "temp": 56.12,
                            "temp_min": 54.98,
                            "temp_max": 56.12,
                            "pressure": 1006.14,
                            "sea_level": 1019.88,
                            "grnd_level": 1006.14,
                            "humidity": 55,
                            "temp_kf": 0.63
                        },
                        "weather": [
                            {
                                "id": 803,
                                "main": "Clouds",
                                "description": "broken clouds",
                                "icon": "04d"
                            }
                        ],
                        "clouds": {
                            "all": 64
                        },
                        "wind": {
                            "speed": 11.25,
                            "deg": 229
                        },
                        "rain": {},
                        "snow": {},
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-06 21:00:00"
                    },
                    {
                        "dt": 1523372400,
                        "main": {
                            "temp": 35.61,
                            "temp_min": 35.61,
                            "temp_max": 35.61,
                            "pressure": 1011.76,
                            "sea_level": 1025.97,
                            "grnd_level": 1011.76,
                            "humidity": 98,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 7.29,
                            "deg": 44.5038
                        },
                        "rain": {
                            "3h": 2.63
                        },
                        "snow": {
                            "3h": 0.6375
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 15:00:00"
                    },
                    {
                        "dt": 1523383200,
                        "main": {
                            "temp": 37.02,
                            "temp_min": 37.02,
                            "temp_max": 37.02,
                            "pressure": 1010.68,
                            "sea_level": 1024.9,
                            "grnd_level": 1010.68,
                            "humidity": 99,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 92
                        },
                        "wind": {
                            "speed": 4.97,
                            "deg": 10.0001
                        },
                        "rain": {
                            "3h": 1.41
                        },
                        "snow": {
                            "3h": 0.017499999999999
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 18:00:00"
                    },
                    {
                        "dt": 1523394000,
                        "main": {
                            "temp": 39.35,
                            "temp_min": 39.35,
                            "temp_max": 39.35,
                            "pressure": 1009.69,
                            "sea_level": 1023.87,
                            "grnd_level": 1009.69,
                            "humidity": 91,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10d"
                            }
                        ],
                        "clouds": {
                            "all": 68
                        },
                        "wind": {
                            "speed": 5.39,
                            "deg": 342.001
                        },
                        "rain": {
                            "3h": 0.31
                        },
                        "snow": {
                            "3h": 0.03
                        },
                        "sys": {
                            "pod": "d"
                        },
                        "dt_txt": "2018-04-10 21:00:00"
                    },
                    {
                        "dt": 1523404800,
                        "main": {
                            "temp": 34.96,
                            "temp_min": 34.96,
                            "temp_max": 34.96,
                            "pressure": 1010.76,
                            "sea_level": 1024.96,
                            "grnd_level": 1010.76,
                            "humidity": 92,
                            "temp_kf": 0
                        },
                        "weather": [
                            {
                                "id": 500,
                                "main": "Rain",
                                "description": "light rain",
                                "icon": "10n"
                            }
                        ],
                        "clouds": {
                            "all": 44
                        },
                        "wind": {
                            "speed": 3.71,
                            "deg": 298.501
                        },
                        "rain": {
                            "3h": 0.03
                        },
                        "snow": {},
                        "sys": {
                            "pod": "n"
                        },
                        "dt_txt": "2018-04-11 00:00:00"
                    }
                ],
                "city": {
                    "id": 420026433,
                    "name": "Elizabeth",
                    "coord": {
                        "lat": 40.6704,
                        "lon": -74.4274
                    },
                    "country": "US"
                }
            }
        """.data(using: .utf8)!
        
    }
}

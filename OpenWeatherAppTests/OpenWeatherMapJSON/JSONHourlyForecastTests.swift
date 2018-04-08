//
//  JSONHourlyForecastTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest

class JSONHourlyForecastTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecodable() {
        var sut: JSONHourlyForecast!
        
        do {
            sut = try JSONDecoder().decode(JSONHourlyForecast.self, from: self.getSampleJSON())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.dt, 1523016000)
        XCTAssertEqual(sut.main, JSONMain(temp: 36.28, temp_min: 31.71, temp_max: 36.28, pressure: 1019.02, sea_level: 1033.5, grnd_level: 1019.02, humidity: 70, temp_kf: 2.54))
        XCTAssertEqual(sut.weather.count, 1)
        XCTAssertEqual(sut.weather[0], JSONWeather(id: 500, main: "Rain", description: "light rain", icon: "10d"))
        XCTAssertEqual(sut.clouds, JSONClouds(all: 80))
        XCTAssertEqual(sut.wind, JSONWind(speed: 3.98, deg: 162.505))
        XCTAssertEqual(sut.rain, JSONRain(h3: 0.015))
        XCTAssertEqual(sut.snow, JSONSnow(h3: 0.4285))
        XCTAssertEqual(sut.sys, JSONsys(pod: "d"))
        XCTAssertEqual(sut.dt_txt, "2018-04-06 12:00:00")
    }
    
    func testDecodeOptional() {
        
        var sut1: JSONHourlyForecast!
        
        do{
            sut1 = try JSONDecoder().decode(JSONHourlyForecast.self, from: self.getSecondJSON())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut1)
    }
    
    
}

// MARK: - Supporting Functionality
extension JSONHourlyForecastTests {
    
    func getSampleJSON() -> Data {
        return
"""
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
}
""".data(using: .utf8)!
    }
    
    func getSecondJSON() -> Data {
        return
"""
{
    "dt": 1523059200,
    "main": {
        "temp": 53.75,
        "temp_min": 53.75,
        "temp_max": 53.75,
        "pressure": 1005.32,
        "sea_level": 1019.14,
        "grnd_level": 1005.32,
        "humidity": 56,
        "temp_kf": 0
    },
    "weather": [
        {
            "id": 803,
            "main": "Clouds",
            "description": "broken clouds",
            "icon": "04n"
        }
    ],
    "clouds": {
        "all": 76
    },
    "wind": {
        "speed": 10.13,
        "deg": 238.004
    },
    "rain": {},
    "snow": {},
    "sys": {
        "pod": "n"
    },
    "dt_txt": "2018-04-07 00:00:00"
}
""".data(using: .utf8)!
    }
}

//
//  JSONMainTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class JSONMainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecodable(){
        
        var sut: JSONMain!
        
        do {
            sut = try JSONDecoder().decode(JSONMain.self, from: self.getJSONData())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.temp, 36.28)
        XCTAssertEqual(sut.temp_min, 31.71)
        XCTAssertEqual(sut.temp_max, 36.28)
        XCTAssertEqual(sut.pressure, 1019.02)
        XCTAssertEqual(sut.sea_level, 1033.5)
        XCTAssertEqual(sut.grnd_level, 1019.02)
        XCTAssertEqual(sut.humidity, 70)
        XCTAssertEqual(sut.temp_kf, 2.54)
    }
    
    
    func testEquatable() {
        
        let sut1 = JSONMain(temp: 10.5, temp_min: 20.5, temp_max: 30.5, pressure: 40.5, sea_level: 50.5, grnd_level: 10, humidity: 20, temp_kf: 60.6)
        
        var sut2 = JSONMain(temp: 10.5, temp_min: 20.5, temp_max: 30.5, pressure: 40.5, sea_level: 50.5, grnd_level: 10, humidity: 20, temp_kf: 60.6)
        
        XCTAssertEqual(sut1, sut2)
        
        sut2.grnd_level = sut2.grnd_level + 0.01
        XCTAssertNotEqual(sut1, sut2)
        
        sut2 = sut1
        XCTAssertEqual(sut1, sut2)

        sut2.humidity = sut2.humidity + 10
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.pressure = sut2.pressure + 10.1
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.sea_level = sut2.sea_level + 10.1
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.temp = sut2.temp + 10.1
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.temp_kf = sut2.temp_kf + 10.1
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.temp_max = sut2.temp_max + 10.1
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.temp_min = sut2.temp_min + 10.1
        XCTAssertNotEqual(sut1, sut2)

    }
    
    
}

// MARK: - Supporting Functionality
extension JSONMainTests {
    
    func getJSONData() -> Data {
        
        return
"""
{
    "temp": 36.28,
    "temp_min": 31.71,
    "temp_max": 36.28,
    "pressure": 1019.02,
    "sea_level": 1033.5,
    "grnd_level": 1019.02,
    "humidity": 70,
    "temp_kf": 2.54
}
""".data(using: .utf8)!
    }
}

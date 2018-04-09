//
//  JSONWeatherTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class JSONWeatherTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecoder(){
        
        var sut: JSONWeather!
        
        do {
            sut = try JSONDecoder().decode(JSONWeather.self, from: self.getJSONData())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.id, 500)
        XCTAssertEqual(sut.main, "Rain")
        XCTAssertEqual(sut.description, "light rain")
        XCTAssertEqual(sut.icon, "10d")
    }
    
    func testEquatable() {
        
        let sut1 = JSONWeather(id: 10, main: "mainString", description: "description String", icon: "icon String")
        
        var sut2 = JSONWeather(id: 10, main: "mainString", description: "description String", icon: "icon String")
        
        XCTAssertEqual(sut1, sut2)
        
        sut2.description = "\(sut1.description)ssss"
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)

        sut2.icon = "\(sut1.icon)ssss"
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.id = sut1.id + 12
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.main = "\(sut1.main)ssss"
        XCTAssertNotEqual(sut1, sut2)

    }

    
}

// MARK: - Supporting Functionality
extension JSONWeatherTests {
    
    func getJSONData() -> Data {
        
        return
            """
{
    "id": 500,
    "main": "Rain",
    "description": "light rain",
    "icon": "10d"
}
""".data(using: .utf8)!
    }
}

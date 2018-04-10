//
//  JSONCityTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class JSONCityTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecoder() {
        var sut: JSONCity!
        
        do {
            sut = try JSONDecoder().decode(JSONCity.self, from: self.getJSONData())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.coord, JSONCoord(lat: 40.6704, lon: -74.4274))
        XCTAssertEqual(sut.country, "US")
        XCTAssertEqual(sut.id, 420026433)
        XCTAssertEqual(sut.name, "Elizabeth")
    }
    
    func testEquatable(){
        let coord1 = JSONCoord(lat: 34.4, lon: 23.3)
        let sut1 = JSONCity(id: 2, name: "name", coord: coord1, country: "country")
        var sut2 = JSONCity(id: 2, name: "name", coord: coord1, country: "country")
        
        XCTAssertEqual(sut1, sut2)
        sut2.coord = JSONCoord(lat: 34.4, lon: 1.2)
        XCTAssertNotEqual(sut1, sut2)
        
        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.country = "\(sut1.country)dd"
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        sut2.id = sut1.id + 3
        XCTAssertNotEqual(sut1, sut2)
        
        sut2 = sut1
        sut2.name = "\(sut1.name)334edf"
        XCTAssertNotEqual(sut1, sut2)
}
}

// MARK: - Supporting Functionality
extension JSONCityTests {
    
    func getJSONData() -> Data {
        
        return
"""
{
    "id": 420026433,
    "name": "Elizabeth",
    "coord": {
        "lat": 40.6704,
        "lon": -74.4274
    },
    "country": "US"
}
""".data(using: .utf8)!
    }
}

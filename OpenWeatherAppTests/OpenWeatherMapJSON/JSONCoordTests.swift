//
//  JSONCoordTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest

class JSONCoordTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecodable() {
        var sut: JSONCoord!
        
        do {
            sut = try JSONDecoder().decode(JSONCoord.self, from: self.getJSONData())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.lat, 40.6704)
        XCTAssertEqual(sut.lon, -74.4274)
    }
    
    func testEquatable() {
        let sut1 = JSONCoord(lat: 45.5, lon: -10.0)
        var sut2 = JSONCoord(lat: 45.5, lon: -10.0)
        XCTAssertEqual(sut1, sut2)
        
        sut2.lat = sut1.lat - 33
        XCTAssertNotEqual(sut1, sut2)
        
        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        sut2.lon = sut1.lon + 0.02
        XCTAssertNotEqual(sut1, sut2)
    }
}
// MARK: - Supporting Functionality
extension JSONCoordTests {
    
    func getJSONData() -> Data {
        
        return
            """
{
    "lat": 40.6704,
    "lon": -74.4274
}
""".data(using: .utf8)!
    }
}

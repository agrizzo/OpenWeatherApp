//
//  JSONWindTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest

class JSONWindTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
 
    func testDecodable() {
        var sut: JSONWind!
        
        do {
            sut = try JSONDecoder().decode(JSONWind.self, from: self.getSampleJSON())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.speed, 3.98)
        XCTAssertEqual(sut.deg, 162.505)
    }
    
    func testEquatable() {
        let sut1 = JSONWind(speed: 10.5, deg: 34.4)
        var sut2 = JSONWind(speed: 10.5, deg: 34.4)
        
        XCTAssertEqual(sut1, sut2)
        
        sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.deg = sut1.deg + 0.11
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        sut2.speed = sut1.speed + 0.11
        XCTAssertNotEqual(sut1, sut2)

    }
}

// MARK: - Supporting Functionality
extension JSONWindTests {
    
    func getSampleJSON() -> Data {
        return
"""
{
    "speed": 3.98,
    "deg": 162.505
}
""".data(using: .utf8)!
    }
}

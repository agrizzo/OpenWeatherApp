//
//  JSONRainTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class JSONRainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecodable() {
        var sut: JSONRain!
        
        do {
            sut = try JSONDecoder().decode(JSONRain.self, from: self.getSampleJSON())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.h3, 0.015)
    }
    
    func testEquatable() {
        let sut1 = JSONRain(h3: 21.1)
        var sut2 = JSONRain(h3: 21.1)
        XCTAssertEqual(sut1, sut2)
        
        sut2 = JSONRain(h3: 55.55)
        XCTAssertNotEqual(sut1, sut2)
    }
    
}

// MARK: - Supporting Functionality
extension JSONRainTests {
    
    func getSampleJSON() -> Data {
        return
            """
{
    "3h": 0.015
}
""".data(using: .utf8)!
    }
}

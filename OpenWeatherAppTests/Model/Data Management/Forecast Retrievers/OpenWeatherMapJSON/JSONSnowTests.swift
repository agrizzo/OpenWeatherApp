//
//  JSONSnowTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class JSONSnowTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSnowDecode() {
        
        var sut: JSONSnow!
        
        do {
            sut = try JSONDecoder().decode(JSONSnow.self, from: self.getSampleJSON())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.h3, 0.4285)
    }
    
    func testEquatable() {
        let sut1 = JSONSnow(h3: 332.2)
        var sut2 = JSONSnow(h3: 332.2)
        XCTAssertEqual(sut1, sut2)
        
        sut2 = JSONSnow(h3: 2.2)
        XCTAssertNotEqual(sut1, sut2)
    }
    
}

// MARK: - Supporting Functionality
extension JSONSnowTests {
    func getSampleJSON() -> Data {
        return
"""
{
    "3h": 0.4285
}
""".data(using: .utf8)!
    }
}

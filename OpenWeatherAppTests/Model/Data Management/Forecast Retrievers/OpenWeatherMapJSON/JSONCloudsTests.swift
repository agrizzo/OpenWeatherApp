//
//  JSONCloudsTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class JSONCloudsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCloudsDecoder() {
        var sut: JSONClouds!
        
        do {
            sut = try JSONDecoder().decode(JSONClouds.self, from: self.getSampleJSON())
        } catch {
            XCTFail("\(error)")
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.all, 80)
        
    }
    
    func testEquatable(){
        let sut1 = JSONClouds(all: 50)
        var sut2 = JSONClouds(all: 50)
        
        XCTAssertEqual(sut1, sut2)
        
        sut2 = JSONClouds(all: 880)
        
        XCTAssertNotEqual(sut1, sut2)

    }
}

// MARK: - Supporting Functionality
extension JSONCloudsTests {
    
    func getSampleJSON() -> Data {
        return
"""
{
    "all": 80
}
""".data(using: .utf8)!
    }
}

//
//  JSONSysTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class JSONSysTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDecodable() {
        var sut: JSONsys!
        
        do {
            sut = try JSONDecoder().decode(JSONsys.self, from: self.getSampleJSON())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.pod, "d")
    }
    
    func testEquatable() {
        let sut1 = JSONsys(pod: ":55")
        var sut2 = JSONsys(pod: ":55")
        XCTAssertEqual(sut1, sut2)
        
        sut2.pod = "\(sut1.pod)ddd"
        XCTAssertNotEqual(sut1, sut2)
    }
}

// MARK: - Supporting Functionality
extension JSONSysTests {
    
    func getSampleJSON() -> Data {
        return
            """
{
    "pod": "d"
}
""".data(using: .utf8)!
    }
}

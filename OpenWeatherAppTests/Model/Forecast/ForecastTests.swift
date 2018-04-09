//
//  ForecastTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest

class ForecastTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testEquatable() {
        let sut1 = Forecast(unitOfMeasure: .imperial, temperature: 12, overview: "Overview", dateTime: Date())
        
        var sut2 = sut1
        XCTAssertEqual(sut1, sut2)
        
        sut2.overview = "\(sut1.overview).sd"
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        sut2.temperature = 12 + sut1.temperature
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        sut2.unitOfMeasure = .metric
        XCTAssertNotEqual(sut1, sut2)

        sut2 = sut1
        sut2.dateTime = Date(timeIntervalSince1970: 3546546)
        XCTAssertNotEqual(sut1, sut2)

        

    }
}

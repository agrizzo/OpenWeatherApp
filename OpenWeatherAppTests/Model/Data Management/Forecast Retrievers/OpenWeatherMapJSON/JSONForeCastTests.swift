//
//  JSONForeCastTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class JSONForeCastTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testJSONImport() {
        
        var sut: JSONForecast!
        
        do {
            sut = try JSONDecoder().decode(JSONForecast.self, from: self.getSampleJSON())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertEqual(sut.cod, "200")
        XCTAssertEqual(sut.message, 0.0049)
        XCTAssertEqual(sut.cnt, 40)
        XCTAssertEqual(sut.list.count, sut.cnt)
        // TODO: - Need more tests for sut.city and the list
    }
    
    func testTransformToForecast() {
        
        var sut: JSONForecast!
        
        do {
            sut = try JSONDecoder().decode(JSONForecast.self, from: self.getSmallerJSON())
        } catch {
            XCTFail("\(error)")
            return
        }
        
        XCTAssertNotNil(sut)
        
        let transformed = sut.transformToForecast()
        
        XCTAssertEqual(transformed.count, sut.list.count)
        
        let testForecast = Forecast(unitOfMeasure: .imperial, temperature: 36, overview: "light rain", dateTime: Date(timeIntervalSince1970: 1523016000))
        
        XCTAssertEqual(testForecast, transformed[0])
        
    }
    
    func testProblemData(){
        var sut: JSONForecast!
        
        do {
            sut = try JSONDecoder().decode(JSONForecast.self, from: self.getProblemData1())
        } catch {
            XCTFail("\(error)")
        }
        
        XCTAssertNotNil(sut)
    }
}



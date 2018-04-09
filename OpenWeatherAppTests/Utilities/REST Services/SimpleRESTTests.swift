//
//  SimpleRESTTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest

class SimpleRESTTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testGet() {
        let sut = SimpleREST()
        
        let workingExpectation = expectation(description: "Test the URL")
        
        guard let url = URL(string: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png") else {
            XCTFail("Need to create a valid url")
            return
        }
        
        sut.get(url: url) {(error, response, data) in
            
            if let error = error {
                XCTFail("\(error)")
                return
            }
            
            guard let response = response else {
                XCTFail("Need to set the response")
                return
            }
            print("\(response)")

            guard let data = data else {
                XCTFail("Need to set the data")
                return
            }
            print("\(data)")
            
            workingExpectation.fulfill()
        }
        
        wait(for: [workingExpectation], timeout: 3)
    }
    
}

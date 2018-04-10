//
//  SimpleStoreTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest
@testable import OpenWeatherApp

class SimpleStoreTests: XCTestCase {
    
    let data: [String: Any] = ["Test": 12345]
    var testKey: String = ""

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        testKey = UUID().uuidString
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSave(){
        
        if let _ = UserDefaults().object(forKey: testKey) {
            XCTFail("Need a different testKey. \"\(testKey)\" exists")
            return
        }
        
        let sut = SimpleStore()
        
        sut.save(data, to: testKey)
        
        guard let found = UserDefaults().dictionary(forKey: testKey) else {
            XCTFail("Unable to find the saved data")
            return
        }
            
        XCTAssertEqual(found["Test"] as? Int , 12345)

    }
    
    func testDelete() {
        UserDefaults().set(data, forKey: testKey)
        
        let sut = SimpleStore()
        sut.delete(from: testKey)
        
        let found = UserDefaults().dictionary(forKey: testKey)
        XCTAssertNil(found)
        
        UserDefaults().removeObject(forKey: testKey)
        
    }
    
    func testGet(){
        UserDefaults().set(data, forKey: testKey)
        
        let sut = SimpleStore()
        
        let myExpectation = expectation(description: "Data was returned")
        
        sut.get(from: testKey) { (error, data) in
            if let error = error {
                XCTFail("\(error)")
                return
            }
            
            guard let data = data else {
                XCTFail("No data returned")
                return
            }
            
            XCTAssertEqual(data["Test"] as? Int, 12345)
            myExpectation.fulfill()
        }
    
        wait(for: [myExpectation], timeout: 3)
        
        UserDefaults().removeObject(forKey: testKey)
    }
    
    func testObservers(){
        
        print("testKey: \(testKey)")
        let observer = ObserverDouble()
        
        let sut = SimpleStore()
        let (message, id) = sut.add(observer: observer, forLocation: testKey)
        
        UserDefaults().set(24, forKey: testKey)
        XCTAssertEqual(observer.lastFunctionCalled, "newObservation")
        XCTAssertEqual(observer.message, message)

        observer.lastFunctionCalled = nil
        observer.message = nil
        UserDefaults().removeObject(forKey: testKey)
        XCTAssertEqual(observer.lastFunctionCalled, "newObservation")
        XCTAssertEqual(observer.message, message)

        sut.remove(observerID: id, forLocation: testKey)
        observer.lastFunctionCalled = nil
        observer.message = nil
        UserDefaults().set(24, forKey: testKey)
        XCTAssertNil(observer.lastFunctionCalled)
        XCTAssertNil(observer.message)

    }
}

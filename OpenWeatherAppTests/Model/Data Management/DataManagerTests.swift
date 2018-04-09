//
//  DataManagerTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest

class DataManagerTests: XCTestCase {
    
    let sample = [Forecast(unitOfMeasure: .metric, temperature: 12, overview: "overview", dateTime: Date())]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetForecast(){
        
        let dataStore = DataStoreDouble()
        let sut = DataManager(dataStore: dataStore)
        
        let testDouble = ForecastRetrieverDouble()
        testDouble.forecasts = sample
        
        dataStore.lastFunctionCalled = nil
        sut.getForecast(from: testDouble)
        
        XCTAssertEqual(sut.hourlyForecasts.count, 1)
        XCTAssertEqual(dataStore.lastFunctionCalled, "save")
        XCTAssertNotNil(dataStore.information)
    }
    
    func testInitialDataLoad() {
        let dataStore = DataStoreDouble()
        dataStore.information = ForecastList(values: sample).getDictionary()
        let sut = DataManager(dataStore: dataStore)
        XCTAssertEqual(dataStore.lastFunctionCalled, "get")
        XCTAssertEqual(sut.hourlyForecasts.count, 1)
    }
    
    func testAsObservingDataStore(){
        
        let dataStore = DataStoreDouble()
        var sut = DataManager(dataStore: dataStore)
        XCTAssertTrue(dataStore.functionCallQueue.contains("add"))
        XCTAssertEqual(sut.hourlyForecasts.count, 0)
        
        dataStore.functionCallQueue.removeAll()
        XCTAssertFalse(dataStore.functionCallQueue.contains("add"))
        dataStore.information = ForecastList(values: sample).getDictionary()
        dataStore.observer?.newObservation(message: "message")
        XCTAssertTrue(dataStore.functionCallQueue.contains("get"))
        XCTAssertEqual(sut.hourlyForecasts.count, 1)

        sut = DataManager(dataStore: dataStore)
        print("\(dataStore.functionCallQueue)")
        XCTAssertTrue(dataStore.functionCallQueue.contains("remove"))
        
    }
    
    func testObserving(){
        let dataStore = DataStoreDouble()
        let sut = DataManager(dataStore: dataStore)
        
        let observer = ObserverDouble()
        let (_, id) = sut.addForecast(observer: observer)

        XCTAssertNil(observer.lastFunctionCalled)
        dataStore.information = ForecastList(values: sample).getDictionary()
        dataStore.observer?.newObservation(message: "message")
        XCTAssertEqual(observer.lastFunctionCalled, "newObservation")
        
        observer.lastFunctionCalled = nil
        sut.removeForecast(observerID: id)
        dataStore.information = nil
        dataStore.observer?.newObservation(message: "message")
        XCTAssertNil(observer.lastFunctionCalled)

    }
    
    func testLive() {
        let sut = DataManager()
        
        print("UserDefaults: \(UserDefaults())")
        
    }
    
}

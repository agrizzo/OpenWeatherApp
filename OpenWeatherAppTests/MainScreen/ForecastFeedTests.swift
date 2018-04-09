//
//  ForecastFeedTests.swift
//  OpenWeatherAppTests
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import XCTest

class ForecastFeedTests: XCTestCase {
    
    var collectionDouble: CollectionViewDouble!
    var dataManagerTest: DataManagerDouble!
    
    override func setUp() {
        super.setUp()
        collectionDouble = CollectionViewDouble()
        dataManagerTest = DataManagerDouble()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfItemsInSection(){
        
        let sut = ForecastFeed(collectionView: collectionDouble, dataManager: dataManagerTest)
        XCTAssertEqual(sut.collectionView(collectionDouble, numberOfItemsInSection: 0), 0)

        
        dataManagerTest.hourlyForecasts = [Forecast(unitOfMeasure: .imperial, temperature: 44, overview: "test", dateTime: Date())]
        dataManagerTest.observer?.newObservation(message: dataManagerTest.message)
        
        XCTAssertEqual(sut.collectionView(collectionDouble, numberOfItemsInSection: 0), 1)

    }
    
    func testReloadIsSentAsNeeded(){
        
        let _ = ForecastFeed(collectionView: collectionDouble, dataManager: dataManagerTest)
        
        let reloadExpectation = expectation(description: "CollectionView get reloadData message")
        
        collectionDouble.expectation = reloadExpectation
        collectionDouble.lastFunctionCalled = nil
        
        dataManagerTest.hourlyForecasts = [Forecast(unitOfMeasure: .imperial, temperature: 44, overview: "test", dateTime: Date())]
        guard let sutObserver = dataManagerTest.observer else {
            XCTFail("Data feed should be observing")
            return
        }
        sutObserver.newObservation(message: "message")
        
        wait(for: [reloadExpectation], timeout: 3)
        
    }
    
//    func testCells(){
//        dataManagerTest.hourlyForecasts = [Forecast(unitOfMeasure: .imperial, temperature: 44, overview: "test", dateTime: Date())]
//        let sut = ForecastFeed(collectionView: collectionDouble, dataManager: dataManagerTest)
//        XCTAssertEqual(sut.collectionView(collectionDouble, numberOfItemsInSection: 0), 1)
//        
//        let indexPath = IndexPath(row: 0, section: 0)
//        let cell = sut.collectionView(collectionDouble, cellForItemAt: indexPath) as! HourlySummaryCell
//        print("\(cell.forecast)")
//    }
    
    
}

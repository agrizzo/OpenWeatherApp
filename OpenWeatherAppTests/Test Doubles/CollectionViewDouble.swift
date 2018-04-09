//
//  CollectionViewDouble.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import UIKit
import XCTest

class CollectionViewDouble: UICollectionView {

    
    var lastFunctionCalled: String?
    var expectation: XCTestExpectation?
    
    init() {
        super.init(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func reloadData() {
        lastFunctionCalled = "reloadData"
        self.expectation?.fulfill()
        super.reloadData()
    }

}

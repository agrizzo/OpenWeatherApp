//
//  CollectionViewDouble.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import UIKit
import XCTest
@testable import OpenWeatherApp

class CollectionViewDouble: UICollectionView {

    
    var lastFunctionCalled: String? {
        get {
            return functionCallQueue.last
        }
        set {
            if let new = newValue {
                functionCallQueue.append(new)
            } else {
                functionCallQueue.removeAll()
            }
        }
    }
    var functionCallQueue: [String] = [String]()
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
    
    override func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) {
        lastFunctionCalled = "register(:forCellWithReuseIdentifier:)"
        super.register(nib, forCellWithReuseIdentifier: identifier)
    }

    override func dequeueReusableCell(withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionViewCell {
        lastFunctionCalled = "dequeueReusableCell(:withReuseIdentifier:)"
        return super.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
    }
}

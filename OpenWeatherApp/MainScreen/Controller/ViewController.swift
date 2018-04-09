//
//  ViewController.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    private var _datafeed: ForecastFeed!
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        let retValue = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        retValue.translatesAutoresizingMaskIntoConstraints = false
        retValue.backgroundColor = #colorLiteral(red: 0.5843228698, green: 0.7776433825, blue: 0.9999347329, alpha: 1)
        return retValue
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        
        _datafeed = ForecastFeed(collectionView: collectionView)
        collectionView.dataSource = _datafeed
        collectionView.delegate = _datafeed
        collectionView.reloadData()
        
    }

}

// MARK: - Private Functions
private extension ViewController {
    
    func setupCollectionView(){
        self.view.addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
    }
}


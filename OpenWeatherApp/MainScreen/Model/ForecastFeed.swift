//
//  ForecastFeed.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/8/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import UIKit

class ForecastFeed: NSObject {
    
    private var _dataManager: DataManagerType!
    private var _observerID: String?
    private var _messageID: String?
    private var _collectionView: UICollectionView!
    
    private var _sectionHeaders = [String]()
    private var _sectionDetail = [[ForecastType]]()
    
    private let _hourlyCell: String = "HourlySummaryCell"
    
    private lazy var _hourExtracter: DateFormatter = {
        let retValue = DateFormatter()
        retValue.dateStyle = .none
        retValue.timeStyle = .short
        return retValue
    }()
    
    private lazy var _dateExtracter: DateFormatter = {
        let retValue = DateFormatter()
        retValue.dateStyle = .short
        retValue.timeStyle = .none
        return retValue
    }()
    
    init(collectionView: UICollectionView, dataManager: DataManagerType? = nil) {
        super.init()
        _dataManager = dataManager ?? DataManager(dataStore: SimpleStore())
        _collectionView = collectionView
        
        setupObserver()
        
        let hourlyCellNib: UINib = UINib(nibName: _hourlyCell, bundle: nil)
        _collectionView.register(hourlyCellNib, forCellWithReuseIdentifier: _hourlyCell)

        getData()
        
        summarize()
    }
}

// MARK: - Private Functions
private extension ForecastFeed {

    func getData() {
        // update data
        let dataManager = DataManager()
        let jsonFeed = OpenWeatherForecastRetriever()
        dataManager.getForecast(from: jsonFeed)
    }
    
    func setupObserver() {
        let (message, id) = _dataManager.addForecast(observer: self)
        _messageID = message
        _observerID = id
    }
    
    func summarize(){

        let wip = _dataManager.hourlyForecasts.sorted { return $0.dateTime < $1.dateTime }
        guard wip.count > 0 else { return }

        var sectionHeaders = [String]()
        var sectionDetail = [[ForecastType]]()

        for entry in wip {
            let date = _dateExtracter.string(from: entry.dateTime)
            if date == sectionHeaders.last {
                sectionDetail[sectionDetail.count - 1] = sectionDetail.last! + [entry]
            } else {
                sectionHeaders.append(date)
                sectionDetail.append([entry])
            }
         }
        
        self._sectionDetail = sectionDetail
        self._sectionHeaders = sectionHeaders
    }
    
    func reloadRequest() {
        DispatchQueue.main.async {
            self._collectionView.reloadData()
        }
    }
}


// MARK: - UICollectionViewDataSource
extension ForecastFeed: UICollectionViewDataSource{
    
    func resetProblem(_ info: String = ""){
        print("problem found: \(info)")
        summarize()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self._collectionView.reloadData()
        })
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        // TODO: Fix this once we figure out why the observer isn't firing
        if _sectionHeaders.count == 0 {
            resetProblem("numberOfsection where count = \(_sectionHeaders.count)")
        }
        return _sectionHeaders.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: Another problem to solve
        guard _sectionDetail.count > section else {
            resetProblem("numberOfItemsInSection: \(_sectionDetail.count) > [section] \(section)")
            return 0
        }
        return _sectionDetail[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let hourlyCellNib: UINib = UINib(nibName: _hourlyCell, bundle: nil)
        _collectionView.register(hourlyCellNib, forCellWithReuseIdentifier: _hourlyCell)

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: _hourlyCell, for: indexPath) as! HourlySummaryCell
        cell.forecast = CellData(forecastType: _dataManager.hourlyForecasts[indexPath.row])
        cell.forecast = CellData(forecastType: _sectionDetail[indexPath.section][indexPath.row], formatter: _hourExtracter)
        //        cell.forecast = CellData(time: "Time", temperature: "77F", weather: "Nice Outside") // TODO: Cleanup
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let name = "CollectionHeader"
        let nib = UINib(nibName: name, bundle: nil)
        collectionView.register(nib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: name)
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: name, for: indexPath) as! CollectionHeader
        
        header.sectionLabel.text = _sectionHeaders[indexPath.section]
        
        return header
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ForecastFeed: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125 , height: 125)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: _collectionView.bounds.width, height: 70)
    }
    
}

// MARK: - Observer
extension ForecastFeed: Observer {
    func newObservation(message: String) {

        guard let messageID = _messageID, messageID == message else {
            return
        }
        summarize()
        reloadRequest()
    }
}

// MARK: - Model Transformation Struct
struct CellData: HourlySummaryCellDataType {
    var time: String
    var temperature: String
    var weatherDescription: String
    

    init(time: String, temperature: String, weather: String) {
        self.time = time
        self.temperature = temperature
        self.weatherDescription = weather
    }
    
    init(forecastType: ForecastType, formatter: DateFormatter? = nil) {

        var localFormatter: DateFormatter!
        
        if formatter == nil {
            localFormatter = DateFormatter()
            localFormatter.timeStyle = .short
            localFormatter.dateStyle = .short
        } else {
            localFormatter = formatter
        }

        self.init(time: localFormatter.string(from: forecastType.dateTime), temperature: forecastType.unitOfMeasure.format(temperature: forecastType.temperature), weather: forecastType.overview.capitalized)
    }
}


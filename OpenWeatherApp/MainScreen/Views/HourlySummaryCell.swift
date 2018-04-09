//
//  HourlySummaryCell.swift
//  OpenWeatherApp
//
//  Created by Tony Rizzo on 4/7/18.
//  Copyright © 2018 Koteray. All rights reserved.
//

import UIKit

class HourlySummaryCell: UICollectionViewCell {

    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var underlyingView: UIView!
    
    /// Information needed for display
    var forecast: HourlySummaryCellDataType! {
        didSet {
            self.populateLabels()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        underlyingView.layer.cornerRadius = 5
        underlyingView.layer.borderWidth = 2
        underlyingView.layer.borderColor = UIColor.black.cgColor
    }

}

// MARK: - Private functions
private extension HourlySummaryCell {
    func populateLabels() {
        timeLabel.text = forecast.time
        temperatureLabel.text = forecast.temperature
        descriptionLabel.text = forecast.weatherDescription
    }
}

// MARK: - Needed Model Protocol
protocol HourlySummaryCellDataType {
    var time: String { get }
    var temperature: String { get }
    var weatherDescription: String { get }
}

//
//  HCollectionViewCell.swift
//  Weather
//
//  Created by Ngoduc on 5/30/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class HCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var timeLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var temperatureLable: UILabel!
    var dailyWeather: DailyWeather!{
        didSet{
            timeLable.text = dailyWeather.time
            imageView.image = UIImage(systemName: dailyWeather.imageIcon)
            imageView.tintColor = dailyWeather.color
            temperatureLable.text = "\(dailyWeather.temp)°"
        }
    }
}

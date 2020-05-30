//
//  VCollectionViewCell.swift
//  Weather
//
//  Created by Ngoduc on 5/30/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class VCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tempL: UILabel!
    @IBOutlet weak var tempHLable: UILabel!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var dailyLable: UILabel!
    var weeklyWeather: WeeklyWeather!{
          didSet{
            tempL.text = weeklyWeather.tempL
            tempHLable.text = weeklyWeather.tempH
              imageIcon.image = UIImage(systemName: weeklyWeather.imageIcon)
              imageIcon.tintColor = weeklyWeather.color
              dailyLable.text = weeklyWeather.day
          }
      }
    
}

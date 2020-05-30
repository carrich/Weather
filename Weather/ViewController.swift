//
//  ViewController.swift
//  Weather
//
//  Created by Ngoduc on 5/27/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var daylyConllection: UICollectionView!
    @IBOutlet weak var nhietdoCollectionView: UICollectionView!
    let dailyTemps = [DailyWeather(time: "Bây giờ", imageIcon: "sun.max.fill", temp: "29", color: .yellow),
                      DailyWeather(time: "18", imageIcon: "cloud.sun", temp: "29",color: .white),
                      DailyWeather(time: "18:32", imageIcon: "sunset.fill", temp: "29",color: .white),
                      DailyWeather(time: "19", imageIcon: "cloud.moon.fill", temp: "28",color: .white),
                      DailyWeather(time: "20", imageIcon: "cloud.moon.fill", temp: "28",color: .white),
                      DailyWeather(time: "21", imageIcon: "cloud.moon.fill", temp: "27",color: .white),
                      DailyWeather(time: "22", imageIcon: "cloud.moon.fill", temp: "27",color: .white),
                      DailyWeather(time: "23", imageIcon: "cloud.moon.fill", temp: "26",color: .white),
                      DailyWeather(time: "24", imageIcon: "cloud.moon.fill", temp: "26",color: .white),]
    let dailyCollect = [WeeklyWeather(day: "Thứ Năm", imageIcon: "cloud.sun.fill", tempL: "24", tempH: "31", color: .white),
                        WeeklyWeather(day: "Thứ Sáu", imageIcon: "cloud.sun.fill", tempL: "26", tempH: "32", color: .white),
                        WeeklyWeather(day: "Thứ Bảy", imageIcon: "cloud.sun.fill", tempL: "27", tempH: "35", color: .white),
                        WeeklyWeather(day: "Chủ Nhật", imageIcon: "cloud.sun.fill", tempL: "27", tempH: "36", color: .white),
                        WeeklyWeather(day: "Thứ Hai", imageIcon: "cloud.sun.fill", tempL: "27", tempH: "37", color: .white),
                        WeeklyWeather(day: "Thứ Ba", imageIcon: "cloud.fill", tempL: "27", tempH: "36", color: .white),
                        WeeklyWeather(day: "Thứ Tư", imageIcon: "cloud.bolt.fill", tempL: "27", tempH: "34", color: .white),
                        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nhietdoCollectionView.backgroundColor = .none
        daylyConllection.backgroundColor = .none
        
    }
    
    
}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == nhietdoCollectionView {
            return 9
        }
        if collectionView == daylyConllection {
            return 7
        }
        return 9
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == nhietdoCollectionView {
            let hourlyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HourlyCell", for: indexPath) as! HCollectionViewCell
            hourlyCell.dailyWeather = dailyTemps[indexPath.row]
            return hourlyCell}
        if collectionView == daylyConllection {
            let daylyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DaylyCell", for: indexPath) as! VCollectionViewCell
            daylyCell.weeklyWeather = dailyCollect[indexPath.row]
            return daylyCell
        }
        let  daylyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DaylyCell", for: indexPath) as! VCollectionViewCell
        daylyCell.weeklyWeather = dailyCollect[indexPath.row]
        return daylyCell
        
    }
    
    
}

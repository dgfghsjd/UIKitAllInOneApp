//
//  ViewController3.swift
//  UIKitAllInOneApp
//
//  Created by SeungHwanKim on 2023/05/27.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var currentDate: UILabel!
    @IBOutlet weak var selectedDate: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let timeSelector: Selector = #selector(ViewController3.updateTime)
    let interval = 1.0
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEEE Z"
        
        currentDate.text = "현재시간: " + formatter.string(from: date as Date)
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEEE Z"
        
        selectedDate.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    
}

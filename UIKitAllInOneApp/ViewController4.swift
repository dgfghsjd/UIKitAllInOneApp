//
//  ViewController4.swift
//  UIKitAllInOneApp
//
//  Created by SeungHwanKim on 2023/05/30.
//

import UIKit

class ViewController4: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imgArray = [UIImage?]()
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    
    @IBOutlet weak var imagePicker: UIPickerView!
    @IBOutlet weak var selectedImageName: UILabel!
    @IBOutlet weak var selectedImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< MAX_ARRAY_NUM {
            let img = UIImage(named: imageFileName[i])
            imgArray.append(img)
        }
        
        selectedImageName.text = imageFileName[0]
        selectedImageView.image = imgArray[0]
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedImageName.text = imageFileName[row]
        selectedImageView.image = imgArray[row]
//        selectedImageView.image = UIImage(named: imageFileName[row])
//        line49 를 (line13, line24~30, line48) 처럼 구현할 수도 있다.
//        파일 디렉토리에서 그 때 그 때 불러오거나 저장된 image들의 배열을 메모리에 만든 후 그 배열에서 불러오거나
    }
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        let imageView = UIImageView(image: imgArray[row])
//        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 300)
//
//        return imageView
//    }
//     피커뷰의 항목에 사진이 뜨게하는 용도. line42의 함수와 같이 선언해줘도 얘가 이긴다.
    
}

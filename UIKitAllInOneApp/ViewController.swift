//
//  ViewController.swift
//  UIKitAllInOneApp
//
//  Created by SeungHwanKim on 2023/05/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!

    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneField: UITextField!
    
    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //nameLabel.textColor = .black //여기서 지정해줘도 오른쪽 인스펙터 영역에서 지정한 색으로 적용됩니다.
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameField.placeholder = "이름을 입력해주세요"
        nameField.tintColor = .orange  //커서의 색을 결정함
//        nameField.backgroundColor = .darkGray // 필드 내부의 색
        phoneField.placeholder = "010-XXXX-XXXX"
        phoneField.tintColor = .orange  //커서의 색을 결정함
//        phoneField.backgroundColor = .darkGray // 필드 내부의 색
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func showInfo(_ sender: Any) {
        if nameField.text == "" || phoneField.text == "" {
            infoLabel.text = "제대로 입력해주세요"
        }
        else {
            infoLabel.text = "\"" + nameField.text! + "\" 님 반갑습니다. \"" + phoneField.text! + "\" 의 위치는 ~~입니다."
        }
    }
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

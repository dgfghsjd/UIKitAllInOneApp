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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameField.placeholder = "이름을 입력해주세요"
        phoneField.placeholder = "010-XXXX-XXXX"
    }


}


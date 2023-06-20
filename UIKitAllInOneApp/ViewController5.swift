//
//  ViewController5.swift
//  UIKitAllInOneApp
//
//  Created by SeungHwanKim on 2023/06/21.
//

import UIKit

class ViewController5: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var onBtn: UIButton!
    @IBOutlet weak var offBtn: UIButton!
    @IBOutlet weak var deleteBtn: UIButton!
    
    let imgOn = UIImage(named: "lightOn.png")
    let imgOff = UIImage(named: "lightOff.png")
    let emoji = UIImage(systemName: "x.square")
    
    
    var isLightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = imgOn
    }
    
    @IBAction func lightOn(_ sender: Any) {
        if isLightOn {
            let onAlert = UIAlertController(title: "Warning", message: "The light is already on", preferredStyle: .alert)
            let onAlertAction = UIAlertAction(title: "OK", style: .default)
            onAlert.addAction(onAlertAction)
            present(onAlert, animated: true, completion: nil)
            
        } else {
            imgView.image = imgOn
            isLightOn = true
        }
    }
    
    @IBAction func lightOff(_ sender: Any) {
        if isLightOn {
            let onAlert = UIAlertController(title: "Warning", message: "Really off?", preferredStyle: .alert)
            let offAlertAction = UIAlertAction(title: "yes", style: .destructive, handler: {
                ACTION in self.imgView.image = self.imgOff
                self.isLightOn = false
            })
            let cancelAlertAction = UIAlertAction(title: "no", style: .cancel)
            onAlert.addAction(offAlertAction)
            onAlert.addAction(cancelAlertAction)
            present(onAlert, animated: true, completion: nil)
        } else {
            let onAlert = UIAlertController(title: "Warning", message: "The light is already off", preferredStyle: .alert)
            let onAlertAction = UIAlertAction(title: "yes", style: .default)
            onAlert.addAction(onAlertAction)
            present(onAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func deleteLight(_ sender: Any) {
        let deleteAlert = UIAlertController(title: "Warning", message: "Really delete??", preferredStyle: .actionSheet)
        
        let deleteAction = UIAlertAction(title: "Turn Off", style: .default) { ACTION in
            self.imgView.image = self.imgOff
            self.isLightOn = false
        }
        let notDeleteAction = UIAlertAction(title: "Turn On", style: .default) { ACTION in
            self.imgView.image = self.imgOn
            self.isLightOn = true
        }
        let cancelAction = UIAlertAction(title: "Delete", style: .destructive) { ACTION in
            self.isLightOn = false
            self.imgView.image = self.emoji
        }
        deleteAlert.addAction(notDeleteAction)
        deleteAlert.addAction(deleteAction)
        deleteAlert.addAction(cancelAction)
        
        present(deleteAlert, animated: true, completion: nil)
        
    }
    
    
}

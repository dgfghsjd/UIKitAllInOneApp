//
//  ViewController2.swift
//  UIKitAllInOneApp
//
//  Created by SeungHwanKim on 2023/05/27.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet var ImgView: UIImageView!
    
    @IBOutlet var zoomBtn: UIButton!
    @IBOutlet var lightBtn: UIButton!
    
    @IBOutlet var zoomSwitch: UISwitch!
    @IBOutlet var lightSwitch: UISwitch!
    
    var isZoom: Bool = false
    var isLight: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zoomSwitch.isOn = false
        lightSwitch.isOn = false
        lightTapped()
    }
    
    func checkTapped() {
        var img = ImgView.image
        var newWidth: CGFloat, newHeight: CGFloat
        var scale = 1.5
        if (isZoom) {
            newWidth = ImgView.frame.width*scale
            newHeight = ImgView.frame.height*scale
            zoomBtn.setTitle("확대", for: .normal)
            zoomSwitch.isOn = true
        } else {
            newWidth = ImgView.frame.width/scale
            newHeight = ImgView.frame.height/scale
            zoomBtn.setTitle("축소", for: .normal)
            zoomSwitch.isOn = false
        }
        ImgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    func lightTapped() {
        if (isLight) {
            lightBtn.setTitle("끄기", for: .normal)
            ImgView.image = UIImage(named: "lightOn.png")
            lightSwitch.isOn = true
            isLight = !isLight
        } else {
            lightBtn.setTitle("켜기", for: .normal)
            ImgView.image = UIImage(named: "lightOff.png")
            lightSwitch.isOn = false
            isLight = !isLight
        }
    }
    
    @IBAction func zoomState(_ sender: UIButton) {
        checkTapped()
    }
    
    @IBAction func lightState(_ sender: UIButton) {
        lightTapped()
    }
    
    @IBAction func zoomStateBySwitch(_ sender: UISwitch) {
        checkTapped()
    }
    
    @IBAction func lightStateBySwitch(_ sender: UISwitch) {
        lightTapped()
    }
    
    
}

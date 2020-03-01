//
//  ViewController.swift
//  picturecolorchange
//
//  Created by joseph on 2020/3/1.
//  Copyright © 2020 joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var randomColorChange: UIButton!
    
    
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLabel.text=String(redSlider.value)
        greenLabel.text=String(greenSlider.value)
        blueLabel.text=String(blueSlider.value)
        alphaLabel.text=String(alphaSlider.value)
    }
    @IBAction func colorSliderChange(_ sender: UISlider) {
        imageView.backgroundColor=UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLabel.text=String(format:"%.2f",redSlider.value)
        greenLabel.text=String(format:"%.2f",greenSlider.value)
        blueLabel.text=String(format:"%.2f",blueSlider.value)
        alphaLabel.text=String(format:"%.2f",alphaSlider.value)
        
    }
    @IBAction func randomColorChange(_ sender: UIButton) {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        let alpha = Double.random(in: 0...1)
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
        alphaSlider.value = Float(alpha)
  imageView.backgroundColor=UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
       redLabel.text=String(format:"%.2f",redSlider.value)
        greenLabel.text=String(format:"%.2f",greenSlider.value)
        blueLabel.text=String(format:"%.2f",blueSlider.value)
        alphaLabel.text=String(format:"%.2f",alphaSlider.value)
            }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if redSwitch.isOn{
        redSlider.isEnabled=true
}else{redSlider.isEnabled=false}
        if greenSwitch.isOn{
        greenSlider.isEnabled=true
}else{greenSlider.isEnabled=false}
        if blueSwitch.isOn{
        blueSlider.isEnabled=true
}else{blueSlider.isEnabled=false}
    
        if redSwitch.isOn,greenSwitch.isOn,blueSwitch.isOn{randomColorChange.isEnabled=true}else{randomColorChange.isEnabled=false}
    }
    
}


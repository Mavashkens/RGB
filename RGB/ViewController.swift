//
//  ViewController.swift
//  RGB
//
//  Created by Mariya Andreeva on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    @IBOutlet var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        setColor()
      
    }
    
    @IBAction func moveSlider(_sender: UISlider) {
        setColor()
    }
    
    @IBAction func moveRedSlider() {
        redLabel.text = String(round(redSlider.value * 100) / 100)
    }
    
    @IBAction func moveGreenSlider() {
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
    }
    
    @IBAction func moveBlueSlider() {
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
         }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
        red: CGFloat(redSlider.value),
        green: CGFloat(greenSlider.value),
        blue: CGFloat(blueSlider.value),
        alpha: 1)
    }

}


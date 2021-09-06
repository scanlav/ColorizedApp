//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Виктор Чуриков on 23.08.2021.
//  Приношу свои искренние извенения за кривой и страшный код. 

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorDisplay: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorDisplay.layer.cornerRadius = 10
        
        colorDisplay.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabelValue.text = String(format: "%.2f", redSlider.value)
        greenLabelValue.text = String(format: "%.2f",greenSlider.value)
        blueLabelValue.text = String(format: "%.2f",blueSlider.value)
    }

    @IBAction func redSliderAction() {
        redLabelValue.text = String(format: "%.2f", redSlider.value)
        colorDisplay.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func greenSliderAction() {
        greenLabelValue.text = String(format: "%.2f", greenSlider.value)
        colorDisplay.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func blueSliderAction() {
        blueLabelValue.text = String(format: "%.2f", blueSlider.value)
        colorDisplay.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
}


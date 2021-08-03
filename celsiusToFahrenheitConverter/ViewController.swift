//
//  ViewController.swift
//  celsiusToFahrenheitConverter
//
//  Created by wozdabady on 03.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        // Celsius
        let temperCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperCelsius)ºC"
        // Fahrenheit
        let temperFarhrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperFarhrenheit)ºF"
    }
}


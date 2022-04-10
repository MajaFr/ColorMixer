//
//  ViewController.swift
//  Colors
//
//  Created by Marzena Frąk on 10/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var oppositeColorView: UIView!
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue1 = CGFloat(sliderRed.value)
        let currentValue2 = CGFloat(sliderGreen.value)
        let currentValue3 = CGFloat(sliderBlue.value)
        
        colorMix(red: currentValue1, green: currentValue2, blue: currentValue3)
        setShadowColor(red: currentValue1, green: currentValue2, blue: currentValue3)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        [colorView, oppositeColorView].forEach {
            setUpCircleView(view: $0)
        }
    }
    
    func colorMix(red: CGFloat, green: CGFloat, blue: CGFloat) {
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
        
        let oppositeColor = UIColor(red: 1.0 - red, green: 1.0 - green, blue: 1.0 - blue, alpha: 1)
        oppositeColorView.backgroundColor = oppositeColor
    }
    
    func setShadowColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        let colorValue = (red + green + blue) / 3
        colorView.layer.shadowColor = UIColor(white: colorValue, alpha: 1).cgColor
    }
    
    func setUpCircleView(view: UIView) {
        view.layer.cornerRadius = view.frame.width / 2.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 4, height: 4)
        view.layer.shadowOpacity = 1.0
    }
}


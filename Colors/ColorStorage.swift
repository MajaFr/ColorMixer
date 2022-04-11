//
//  ColorStorage.swift
//  Colors
//
//  Created by Marzena Frąk on 11/04/2022.
//

import Foundation

class ColorStorage {
    
   private let defaults = UserDefaults.standard
    
    func saveColors(red: Float, green: Float, blue: Float) {
        defaults.set(red, forKey: UserDefaultsKey.redColor.rawValue)
        defaults.set(green, forKey: UserDefaultsKey.greenColor.rawValue)
        defaults.set(blue, forKey: UserDefaultsKey.blueColor.rawValue)
    }
    
    func getColors() -> (red: Float, green: Float, blue: Float) {
        let red = defaults.float(forKey: UserDefaultsKey.redColor.rawValue)
        let green = defaults.float(forKey: UserDefaultsKey.greenColor.rawValue)
        let blue = defaults.float(forKey: UserDefaultsKey.blueColor.rawValue)
        
        return (red, green, blue)
    }
}

private enum UserDefaultsKey: String {
    case redColor = "RedSliderValue"
    case greenColor = "GreenSliderValue"
    case blueColor = "BlueSliderValue"
}


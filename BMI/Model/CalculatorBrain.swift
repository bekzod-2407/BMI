//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Bekzod on 23/06/22.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    var color:UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    var colorGreen:UIColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    var colorPink:UIColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)  // pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies!!", color: color)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: colorGreen)
        } else   {
            bmi = BMI(value: bmiValue, advice: "East less pies!!", color: colorPink)
        }
    }
    
    func getBMIValue() -> String {
        let BMI = String(format: "%.1f",  bmi?.value ?? 0.0)
        return BMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "eat more pies!!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .green
    }
}

//
//  CalculatorBrain.swift
//  BMICalculator
//
//  Created by Mahoto Sasaki on 6/5/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let bmiValue = weight / (height * height)
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "underweight", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "normal", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "overweight", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    }
}

//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Felipe Augusto Correia on 27/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmi = Float(weight / pow(height, 2))
        
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "Coma mais bolo!", color: UIColor.blue)
        } else if bmi < 24.9 {
            bmiValue = BMI(value: bmi, advice: "Continue assim!", color: UIColor.green)
        } else {
            bmiValue = BMI(value: bmi, advice: "Coma menos sorvete!", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No advice"
    }
    
    func getcolor() -> UIColor {
        return bmiValue?.color ?? UIColor.white
    }
    
}

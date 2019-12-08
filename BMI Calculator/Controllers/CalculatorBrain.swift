//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Timo Niwarinda on 12/7/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
   
    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height,2)
        if bmiValue < 18.5 {
            bmi =  BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi =  BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))

        }else{
            bmi =  BMI(value: bmiValue, advice: "Eat Less Pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))

        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
 
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    
   }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "continue on your usual diet"
     
    }
}

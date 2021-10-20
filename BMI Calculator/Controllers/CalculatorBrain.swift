//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Apps Azubi on 20.10.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi:BMI?

    func getBmi() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice!"
    }

    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }

    mutating func calculateBmi (_ height:Float, _ weight:Float ){
        let bm = weight / (height * height)

        if bm < 18.5 {
            bmi = BMI(value: bm, advice: "Eat more", color: UIColor.blue)
        } else if bm < 24.90 {
            bmi = BMI(value: bm, advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
             bmi = BMI(value: bm, advice: "Eat less piec", color: UIColor.red)
        }
    }
}

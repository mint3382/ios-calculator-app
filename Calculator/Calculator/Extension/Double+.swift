//
//  extension.swift
//  Calculator
//
//  Created by mint on 2023/06/02.
//

import Foundation

extension Double: CalculateItem {
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        let number = NSDecimalNumber.init(floatLiteral: self)

        formatter.maximumSignificantDigits = 15
        formatter.numberStyle = .decimal
        //formatter.roundingMode = .halfUp
        formatter.usesSignificantDigits = true
        
        return formatter.string(from: number) ?? "NaN"
    }
}

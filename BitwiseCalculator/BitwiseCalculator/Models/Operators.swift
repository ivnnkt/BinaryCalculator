//
//  Operators.swift
//  BitwiseCalculator
//
//  Created by Nikita on 19.07.2023.
//

import Foundation

enum Operation: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self{
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "x"
        case .division:
            return "\\"
        }
    }
}

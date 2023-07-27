//
//  ButtonsModel.swift
//  BitwiseCalculator
//
//  Created by Nikita on 19.07.2023.
//

import Foundation
import SwiftUI

enum Buttons: Hashable, CustomStringConvertible {
    
//MARK: -    Buttons for operands
    case digit(_ digit: Digit)
    
//MARK: - For Hex calculator
//    case a
//    case b
//    case c
//    case e
//    case f
    
//MARK: -    Buttons for operator
    case operation(_ operation: Operation)
    case negativ
    case persent
    case decimal
    case equal
    case allClear
    case clear
    
    var description: String {
        switch self {
        case .digit(let digit):
            return digit.description
        case .operation(let operation):
            return operation.description
        case .negativ:
            return "+/-"
        case .persent:
            return "%"
        case .decimal:
            return ","
        case .equal:
            return "="
        case .allClear:
            return "AC"
        case .clear:
            return "Clear"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .allClear, .clear, .negativ, .persent:
            return Color(.lightGray)
        case .operation, .equal:
            return .orange
        case .digit, .decimal:
            return .secondary
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .allClear, .clear, .negativ, .persent:
            return .black
        default:
            return .white
        }
    }
}

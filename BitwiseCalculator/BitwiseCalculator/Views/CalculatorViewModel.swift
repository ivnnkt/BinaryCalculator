//
//  CalculatorViewModel.swift
//  BitwiseCalculator
//
//  Created by Nikita on 27.07.2023.
//

import Foundation
import Combine

extension CalculatorView {
    final class ViewModel: ObservableObject {
        
        //MARK: - PROPERTIES
        
        @Published private var calculator = Calculator()
        
        var displayText: String {
            return calculator.displayText
        }
        
        var buttonTypes: [[Buttons]] {
            [
                [.allClear, .negativ, .persent, .operation(.division)],
                [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiplication)],
                [.digit(.four), .digit(.five), .digit(.six), .operation(.subtraction)],
                [.digit(.one), .digit(.two), .digit(.three), .operation(.addition)],
                [.digit(.zero), .decimal, .equal]
            ]
        }
        
        //MARK: - ACTIONS
        
        func performAction(for buttonType: Buttons) {
            switch buttonType {
            case .digit(let digit):
                calculator.setDigit(digit)
            case .operation(let operation):
                calculator.setOperation(operation)
            case .negativ:
                calculator.toggleSign()
            case .persent:
                calculator.setPercent()
            case .decimal:
                calculator.setDecimal()
            case .allClear:
                calculator.allClear()
            case .clear:
                calculator.clear()
            case .equal:
                calculator.evaluate()
            }
        }
        
    }
    
}

//
//  CalculatorButton.swift
//  BitwiseCalculator
//
//  Created by Nikita on 26.07.2023.
//

import SwiftUI
import Combine

extension CalculatorView {
    struct CalculatorButton: View {
        
        let buttonType: Buttons
        @EnvironmentObject private var viewModel: ViewModel
        
        var body: some View {
            Button(buttonType.description){
                viewModel.performAction(for: buttonType)
            }
                .buttonStyle(CalculatorButtonStyle(
                    size: getButtonSize(),
                    backgroundColor: buttonType.backgroundColor,
                    foregroundColor: buttonType.foregroundColor,
                    isWide: buttonType == .digit(.zero))
                )
        }
        
        private func getButtonSize() -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4.0
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
        }
    }
}

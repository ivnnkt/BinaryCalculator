//
//  CalculatorView.swift
//  BitwiseCalculator
//
//  Created by Nikita on 19.07.2023.
//

import SwiftUI

//MARK: - Body
struct CalculatorView: View {
    var buttons: [[Buttons]] {
        [
            [.allClear, .negativ, .persent, .operation(.division)],
            [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiplication)],
            [.digit(.four), .digit(.five), .digit(.six), .operation(.subtraction)],
            [.digit(.one), .digit(.two), .digit(.three), .operation(.addition)],
            [.digit(.zero), .decimal, .equal]
        ]
    }
    
    var body: some View {
        VStack {
            Spacer()
            calculatorScreen
            buttonPad
        }
        .padding(Constants.padding)
        .background(Color.black)
    }
}

//MARK: - Preview
struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}

//MARK: - Extentions

extension CalculatorView {
    
    private var calculatorScreen: some View {
        Text("0")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    private var buttonPad: some View {
        VStack(spacing: Constants.padding) {
            ForEach(buttons, id: \.self) { row in
                HStack(spacing: Constants.padding) {
                    ForEach(row, id: \.self) { buttonType in
                        CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}

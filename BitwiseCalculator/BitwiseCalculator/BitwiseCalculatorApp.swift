//
//  BitwiseCalculatorApp.swift
//  BitwiseCalculator
//
//  Created by Nikita on 18.07.2023.
//

import SwiftUI

@main
struct BitwiseCalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
        }
    }
}

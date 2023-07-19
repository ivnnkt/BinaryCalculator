//
//  Digits.swift
//  BitwiseCalculator
//
//  Created by Nikita on 19.07.2023.
//

import Foundation

enum Digits:Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}

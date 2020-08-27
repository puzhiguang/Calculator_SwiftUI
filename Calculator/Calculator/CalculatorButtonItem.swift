//
//  CalculatorButtonItem.swift
//  Calculator
//
//  Created by puzhiguang on 22/08/2020.
//  Copyright © 2020 puzhiguang. All rights reserved.
//

import Foundation
import SwiftUI

enum CalculatorButtonItem {
    enum Op: String {
        case plus = "+"
        case minus = "-"
        case divide = "÷"
        case multiply = "x"
        case equal = "="
    }

    enum Command: String {
        case clear = "CA"
        case flip = "+/-"
        case percent = "%"
    }

    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem {
    var title: String {
        switch self {
        case let .digit(value): return String(value)
        case .dot: return "."
        case let .op(op): return op.rawValue
        case let .command(command): return command.rawValue
        }
    }
    
    var size: CGSize{
        if case .digit(let value) = self, value == 0{
            return CGSize(width: 88 * 2 + 8, height: 88)
        }
        return CGSize(width: 88, height: 88)
    }
    
    var backgroundColorName:String{
        switch self {
        case .digit,.dot:return "digitBackground"
        case .op:return "operatorBackground"
        case .command:return "commandBackground"
        }
    }
    
    var textColorName:String{
        switch self {
        case .command: return "commandButton"
        default:
            return "writeColor"
        }
    }
}

extension CalculatorButtonItem:Hashable{}

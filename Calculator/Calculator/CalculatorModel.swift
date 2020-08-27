//
//  CalculatorModel.swift
//  Calculator
//
//  Created by puzhiguang on 27/08/2020.
//  Copyright © 2020 puzhiguang. All rights reserved.
//

import SwiftUI
import Combine

class CalculatorModel:ObservableObject{
//    let objectWillChange = PassthroughSubject<Void,Never>()
//
//    var brain:CalculatorBrain = .left("0"){
//        willSet{
//            objectWillChange.send()
//        }
//    }
    @Published var brain:CalculatorBrain = .left("0")
    
    @Published var history:[CalculatorButtonItem] = []
    
    func apply(_ item:CalculatorButtonItem){
        brain = brain.apply(item: item)
        history.append(item)
    }
}

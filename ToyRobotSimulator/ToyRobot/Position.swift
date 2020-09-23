//
//  Position.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 21/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
/// Position Of the Robot on the table
struct Position {
    var abscissa = 0 ///x-axis
    var ordinate = 0 ///y-axis
    /// Function To Validate The Position Of Robot Toy Based On The Size Of Table
    func validateWith(size: (maxAbscissa: Int, maxOrdinate: Int)) -> Bool {
        let abscissaRange = 0..<size.maxAbscissa
        let ordinateRange = 0..<size.maxOrdinate
        if abscissaRange.contains(abscissa) && ordinateRange.contains(ordinate) {
            return true
        }
        return false
    }
}

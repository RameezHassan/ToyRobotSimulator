//
//  Robot.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 21/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
/// Robot Structure
struct Robot {
    var postion: Position
    var direction: Direction
    var description: String {
        return String(postion.abscissa) + "," + String(postion.ordinate) + "," + direction.rawValue
    }
}

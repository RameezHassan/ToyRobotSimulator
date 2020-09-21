//
//  Robot.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 21/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
// Robot Structure
struct Robot {
    var postion: Position // The default position of robot is (0,0) -> (x-axis,y-axis)
    var direction: Direction = .north // The default direction of robot is facing upward(north)
    var description: String {
        return String(postion.abscissa) + "," + String(postion.ordinate) + "," + direction.rawValue
    }
}

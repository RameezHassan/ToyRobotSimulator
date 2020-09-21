//
//  RobotDriver.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 20/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
class RobotDriver {

    /// Representation of table size in (x,y)
    private var tableSize :(maxAbscissa: Int, maxOrdinate: Int) = (5, 5)
    /// Robot Toy Optional Variable
    private var robot: Robot?
    /// Function To Move Robot Toy In Specific Direction
    func move() {
        /// This Function Will Not Do Any Thing If Robot Toy Is Not Already Placed On The Table
        guard (robot != nil), let position = robot?.postion, let direction = robot?.direction else {
            return
        }
        var newPosition: Position
        /// Setting New Position To Robot Toy Based On Current Direction
        switch direction {
        case .north:
            newPosition = Position(abscissa: position.abscissa, ordinate: position.ordinate + 1)
        case .south:
            newPosition = Position(abscissa: position.abscissa, ordinate: position.ordinate - 1)
        case .east:
            newPosition = Position(abscissa: position.abscissa + 1, ordinate: position.ordinate)
        case .west:
            newPosition = Position(abscissa: position.abscissa - 1, ordinate: position.ordinate)
        }
        /// Validating The New Position And Assigning It To Robot Toy
        robot?.postion = newPosition.validateWith(size: tableSize) ? newPosition : position
    }
    /**
     Function To Place Robot On The Table In A Specific Direction.
     
     - Parameters:
       - abscissa: X-axis Position
       - ordinate: Y-axis Position
       - facing: Direction Toy is facing to
     */
    func place(abscissa: Int, ordinate: Int, facing: Direction ) {
        let robotPosition = Position(abscissa: abscissa, ordinate: ordinate)
        // This Function Will Do Nothing If Robot Position Is Outside Table
        guard robotPosition.validateWith(size: tableSize) else {
            return
        }
        /// Setting Robot
        robot = Robot(postion: robotPosition, direction: facing)
    }
    /// Function To Report The Location And Direction Of Report
    func report() -> String {
        /// This Function Will Not Do Any Thing If Robot Toy Is Not Already Placed On The Table
        guard (robot != nil), let robotDescription = robot?.description else {
            return ""
        }
        return robotDescription
    }
    /// Function To Turn Robot Toy Left
    func left() {
        /// This Function Will Not Do Any Thing If Robot Toy Is Not Already Placed On The Table
        guard var updatedRobot = robot else {
            return
        }
        updatedRobot.direction.turnLeft()
        robot = updatedRobot
    }
    /// Function To Turn Robot Toy Right
    func right() {
        /// This Function Will Not Do Any Thing If Robot Toy Is Not Already Placed On The Table
        guard var updatedRobot = robot else {
            return
        }
        updatedRobot.direction.turnRight()
        robot = updatedRobot
    }
}

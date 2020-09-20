//
//  RobotDriver.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 20/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
// Facing Direction Of the Robot
enum Direction: String {
    case north = "NORTH", // facing upwards
         east = "EAST", // facing right
         south = "SOUTH", // facing downward
         west = "WEST" // facing left
}
extension Direction {
    mutating func turnLeft() {
        switch self {
        case .north:
            self = .west
        case .south:
            self = .east
        case .east:
            self = .north
        case .west:
            self = .south
        }
    }
    mutating func turnRight() {
        switch self {
        case .north:
            self = .east
        case .south:
            self = .west
        case .east:
            self = .south
        case .west:
            self = .north
        }
    }
}
struct Position {
    var abscissa = 0 //x-axis
    var ordinate = 0 //y-axis
    // Function To Validate The Position Of Robot Toy Based On The Size Of Table
    func validateWith(size: (maxAbscissa: Int, maxOrdinate: Int)) -> Bool {
        let absissaRange = 0..<size.maxAbscissa
        let ordinateRange = 0..<size.maxOrdinate
        if absissaRange.contains(abscissa) && ordinateRange.contains(ordinate) {
            return true
        } else {
            return false
        }
    }
}
struct Robot {
    var postion: Position // The default position of robot is (0,0) -> (x-axis,y-axis)
    var direction: Direction = .north // The default direction of robot is facing upward(north)
    var description: String {
        return String(postion.abscissa) + "," + String(postion.ordinate) + "," + direction.rawValue
    }
}
class RobotDriver {

    // Setting the size of table
    var tableSize :(maxAbscissa: Int, maxOrdinate: Int) = (5, 5)
    // Robot Toy Optional Variable
    var robot: Robot?
    // Function To Move Robot Toy In Specific Direction
    func move() {
        // This Function Will Not Do Any Thing If Robot Toy Is Not Already Placed On The Table
        guard (robot != nil), let position = robot?.postion, let direction = robot?.direction else {
            return
        }
        var newPosition: Position
        // Setting New Position To Robot Toy Based On Current Direction
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
        // Validating The New Position And Assigning It To Robot Toy
        robot?.postion = newPosition.validateWith(size: tableSize) ? newPosition : position
    }
    // Function To Place Robot On The Table In A Specific Direction
    func place(abscissa: Int, ordinate: Int, facing: Direction ) {
        let robotPosition = Position(abscissa: abscissa, ordinate: ordinate)
        // This Function Will Do Nothing If Robot Position Is Outside Table
        guard robotPosition.validateWith(size: tableSize) else {
            return
        }
        // Setting Robot
        robot = Robot(postion: robotPosition, direction: facing)
    }
    // Function To Report The Location And Direction Of Report
    func report() -> String {
        // This Function Will Not Do Any Thing If Robot Toy Is Not Already Placed On The Table
        guard (robot != nil), let robotDescription = robot?.description else {
            return ""
        }
        return robotDescription
    }
    // Function To Turn Robot Toy Left
    func left() {
        // This Function Will Not Do Any Thing If Robot Toy Is Not Already Placed On The Table
        guard var updatedRobot = robot else {
            return
        }
        updatedRobot.direction.turnLeft()
        robot = updatedRobot
    }
    // Function To Turn Robot Toy Right
    func right() {
        // This Function Will Not Do Any Thing If Robot Toy Is Not Already Placed On The Table
        guard var updatedRobot = robot else {
            return
        }
        updatedRobot.direction.turnRight()
        robot = updatedRobot
    }
}

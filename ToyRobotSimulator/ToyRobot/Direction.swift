//
//  Direction.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 21/9/20.
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

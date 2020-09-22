//
//  RobotCommandReader.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 22/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
/// This function will display the welcome message in console and read input commands from the console
struct RobotCommandReader {
    let robotToy = RobotDriver()
    func startRedingCommands() {
        print("""
              **** Welcome To Toy Robot Simulator ****

         **** Please Enter Your Commands For Toy Robot ****
             **** Please Use Following The Comands ****
         **** Please Enter Your Commands For Toy Robot ****
                     **** PLACE X,Y,F ****
                     **** MOVE ****
                     **** LEFT ****
                     **** RIGHT ****
                     **** REPORT ****

          **** For Quiting Please Enter Q Command ****


""")
        var command = ""
        while command != "Q" {
            if let input = readLine() {
                command = input.uppercased()
                if let result = executeCommand(command: command) {
                    print(result)
                }
            }
        }
        print("**** Thanks For Using Toy Robot Simulator ****")
    }
    func executeCommand(command: String) -> String? {
        switch command {
        case "MOVE":
        robotToy.move()
        case "REPORT":
        return robotToy.report()
        case "LEFT":
        robotToy.left()
        case "RIGHT":
        robotToy.right()
        case let place where place.componentsOfPlaceCommand() != nil:guard let components:
                (position: Position,
                 direction: Direction) = place.componentsOfPlaceCommand() else { return nil }
            robotToy.place(abscissa: components.position.abscissa, ordinate: components.position.ordinate,
                           facing: components.direction)
        default:
        return nil
        }
        return nil
    }
}

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
    // RobotDriver Object Constant
    let robotToy = RobotDriver()
    /// This function will start the command reading process in console
    func startReadingCommands() {
        print("""
              **** Welcome To Toy Robot Simulator ****

         **** Please Enter Your Commands For Toy Robot ****
             **** Please Use Following The Commands ****
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
                command = input.uppercased().trimmingCharacters(in: .whitespaces)
                if let result = executeCommand(command: command) {
                    print(result)
                }
            }
        }
        print("**** Thanks For Using Toy Robot Simulator ****")
    }
    /// This function will execute commands in reader
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

//
//  RobotCommandReader.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 22/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
struct RobotCommandReader {
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

          **** For Quiting Please Enter Quit Command ****


""")
        var command = ""
        while command != "Quit" {
            if let name = readLine() {
                command = name
                if name.uppercased() == "REPORT" {
                    print(name)
                }
            }
        }
        print("**** Thanks For Using Toy Robot Simulator ****")
    }
}

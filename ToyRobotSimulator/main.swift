//
//  main.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 8/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
print("Hello, World!")
var robotToy = RobotDriver()
robotToy.place(abscissa: 2, ordinate: 2, facing: .north)
robotToy.left()
robotToy.move()
robotToy.right()
print(robotToy.report())

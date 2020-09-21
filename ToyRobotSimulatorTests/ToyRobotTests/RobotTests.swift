//
//  RobotTests.swift
//  ToyRobotSimulatorTests
//
//  Created by Rameez Hassan on 22/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import XCTest

class RobotTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testRobotDescriptionFunc() throws {
        let postion = Position(abscissa: 3, ordinate: 4)
        let direction: Direction = .east
        let robot = Robot(postion: postion, direction: direction)
        XCTAssert(robot.description == "3,4,EAST", "Description Of Robot is (3,4) facing East")
    }
}

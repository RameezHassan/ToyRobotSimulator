//
//  DirectionTests.swift
//  ToyRobotSimulatorTests
//
//  Created by Rameez Hassan on 22/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import XCTest

class DirectionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDirectionTurnLeftFunc() throws {
        var direction: Direction = .north //Setting direction to north i.e 90 degrees on cartesian cordinate system
        direction.turnLeft() // Turning left will add 90 degrees and set direction to west i.e 180 degrees
        direction.turnLeft() // Turning left will add 90 degrees and set direction to south i.e 270 degrees
        direction.turnLeft() // Turning left will add 90 degrees and set direction to east i.e 360 or 0 degrees
        direction.turnLeft() // Turning left will add 90 degrees and set direction to north i.e 90 degrees
        XCTAssert(direction == .north, "Direction Should Be North")
    }
    func testDirectionTurnRightFunc() throws {
        var direction: Direction = .north //Setting direction to north i.e 90 degrees on cartesian cordinate system
        direction.turnRight() // Turning right will subtract 90 degrees and set direction to east i.e 0 or 360 degrees
        direction.turnRight() // Turning right will subtract 90 degrees and set direction to south i.e 270 degrees
        direction.turnRight() // Turning right will subtract 90 degrees and set direction to west i.e 180 degrees
        direction.turnRight() // Turning right will subtract 90 degrees and set direction to north i.e 90 degrees
        XCTAssert(direction == .north, "Direction Should Be North")
    }
}

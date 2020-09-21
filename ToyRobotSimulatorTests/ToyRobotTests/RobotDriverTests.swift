//
//  RobotDriverTests.swift
//  ToyRobotSimulatorTests
//
//  Created by Rameez Hassan on 22/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import XCTest

class RobotDriverTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRobotDriverWhenPlacedInsideTheTable() throws {
        let robotToy = RobotDriver()
        robotToy.place(abscissa: 2, ordinate: 2, facing: .north) // 2,2,N
        robotToy.left() // 2,2,WEST
        robotToy.move() // 1,2,WEST
        robotToy.left() // 1,2,SOUTH
        robotToy.move() // 1,1,SOUTH
        robotToy.left() // 1,1,EAST
        robotToy.move() // 2,1,EAST
        robotToy.left() // 2,1,NORTH
        robotToy.move() // 2,2,NORTH
        robotToy.left() // 2,2,WEST
        robotToy.move() // 1,2,WEST
        robotToy.move() // 0,2,WEST
        robotToy.right() // 0,2,NORTH
        robotToy.move() // 0,3,NORTH
        robotToy.right() // 0,3,EAST
        robotToy.move() // 1,3,EAST
        robotToy.right() // 1,3,SOUTH
        robotToy.move() // 1,2,SOUTH
        robotToy.right() // 1,2,WEST
        robotToy.move() // 0,2,WEST
        robotToy.right() // 0,2,NORTH
        robotToy.move() // 0,3,NORTH
        XCTAssert(robotToy.report() == "0,3,NORTH", "Report should be 0,3,NORTH")
    }
    func testRebortDriverWhenPlacedOutsideTheTable() throws {
        let robotToy = RobotDriver()
        robotToy.place(abscissa: 20, ordinate: 20, facing: .north) // This is outside Table (5,5)
        robotToy.move() // Will Do Nothing Since Toy is not placed inside
        robotToy.left() // Will Do Nothing Since Toy is not placed inside
        robotToy.move() // Will Do Nothing Since Toy is not placed inside
        robotToy.left() // Will Do Nothing Since Toy is not placed inside
        robotToy.move() // Will Do Nothing Since Toy is not placed inside
        robotToy.right() // Will Do Nothing Since Toy is not placed inside
        robotToy.move() // Will Do Nothing Since Toy is not placed inside
        XCTAssert(robotToy.report() == "", "We dont have any report as Robot was placed outside the table")
    }

}

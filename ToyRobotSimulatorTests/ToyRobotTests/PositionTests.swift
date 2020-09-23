//
//  PositionTests.swift
//  ToyRobotSimulatorTests
//
//  Created by Rameez Hassan on 22/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import XCTest

class PositionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValidatePositionFuncPassCase() throws {
        let position = Position(abscissa: 6, ordinate: 9)
        let sizeOfTable = (10, 10)
        XCTAssert(position.validateWith(size: sizeOfTable), "Position is with in the Table")
    }
    func testValidatePositionFuncFailCase() throws {
        let position = Position(abscissa: 6, ordinate: 9)
        let sizeOfTable = (5, 5)
        XCTAssert(!position.validateWith(size: sizeOfTable), "Position is outside the Table")
    }
}

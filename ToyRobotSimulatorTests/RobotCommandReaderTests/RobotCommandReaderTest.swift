//
//  RobotCommandReaderTest.swift
//  ToyRobotSimulatorTests
//
//  Created by Rameez Hassan on 23/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import XCTest

class RobotCommandReaderTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testStartReadingCommands() throws {
        RobotCommandReader().startReadingCommands() // We have end this test by pressing q and enter key
    }

    func testExecuteCommand() throws {
        var result = RobotCommandReader().executeCommand(command: "WRONG COMMAND")
        result = RobotCommandReader().executeCommand(command: "PLACE 2,3,NORTH")
        result = RobotCommandReader().executeCommand(command: "MOVE")
        result = RobotCommandReader().executeCommand(command: "RIGHT")
        result = RobotCommandReader().executeCommand(command: "MOVE")
        result = RobotCommandReader().executeCommand(command: "LEFT")
        result = RobotCommandReader().executeCommand(command: "MOVE")
        result = RobotCommandReader().executeCommand(command: "REPORT")
        XCTAssert(result != nil, "Result of Report command should not be nil")
    }

}

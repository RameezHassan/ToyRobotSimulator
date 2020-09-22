//
//  ToyRobotSimulatorTests.swift
//  ToyRobotSimulatorTests
//
//  Created by Rameez Hassan on 20/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import XCTest
@testable import ToyRobotSimulator
class ToyRobotSimulatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testCommandReader() throws {
        RobotCommandReader().startReadingCommands()
    }
}

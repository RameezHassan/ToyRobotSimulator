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

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var result: Direction = .east
        result.turnLeft()
        result.turnLeft()
        XCTAssert(result == .east)

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

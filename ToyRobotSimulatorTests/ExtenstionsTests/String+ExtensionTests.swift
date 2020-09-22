//
//  String+ExtensionTests.swift
//  ToyRobotSimulatorTests
//
//  Created by Rameez Hassan on 23/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import XCTest

class StringExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testComponentsOfPlace() throws {
        let command = "PLACE 2,3,NORTH"
        let result = command.componentsOfPlaceCommand()
        XCTAssert(result != nil, "Result should not be nil")
    }

    func testComponentsOfPlaceCommandWithWrongCommand() throws {
        let command = "This is wrong command"
        let result = command.componentsOfPlaceCommand()
        XCTAssert(result == nil, "Result should be nil")

    }
    func testComponentsOfPlaceCommandWhenFirstCompanentInformationIsWrong() throws {
        let command = "PLACE 2A,3,NORTH"
        let result = command.componentsOfPlaceCommand()
        XCTAssert(result == nil, "Result should be nil")

    }
    func testComponentsOfPlaceCommandWhenSecondCompanentInformationIsWrong() throws {
        let command = "PLACE 2,3A,NORTH"
        let result = command.componentsOfPlaceCommand()
        XCTAssert(result == nil, "Result should be nil")

    }
    func testComponentsOfPlaceCommandWhenThirdCompanentInformationIsWrong() throws {
        let command = "PLACE 2A,3,WrongDirection"
        let result = command.componentsOfPlaceCommand()
        XCTAssert(result == nil, "Result should be nil")

    }
    func testComponentsOfPlaceCommandWhenComponentsAreNotEqualTo3() throws {
        let command = "PLACE 2A,3,NORTH,EAST"
        let result = command.componentsOfPlaceCommand()
        XCTAssert(result == nil, "Result should be nil")

    }
}

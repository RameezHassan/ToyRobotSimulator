//
//  String+Extension.swift
//  ToyRobotSimulator
//
//  Created by Rameez Hassan on 23/9/20.
//  Copyright © 2020 Rameez Hassan. All rights reserved.
//

import Foundation
extension String {
    func componentsOfPlaceCommand() -> (Position, Direction)? {
        let placeCommand = "PLACE "
        guard self.hasPrefix(placeCommand) else { return nil }
        let commandString = String(self.dropFirst(placeCommand.count))
        let components = commandString.components(separatedBy: ",")
        if components.count == 3 {
            guard let abscissa = Int(components[0]) else { return nil }
            guard let ordinate = Int(components[1]) else { return nil }
            guard let direction = Direction(rawValue: components[2]) else { return nil }
            return (Position(abscissa: abscissa, ordinate: ordinate), direction)
        }
        return nil
    }
}

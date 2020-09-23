Toy Robot Simulator
===================
Application Requirement
-----------------------
The requirements for the coding task are listed [here](https://github.com/RameezHassan/ToyRobotSimulator/blob/master/ToyRobotSimulator/ToyRobotSimulatorProblem/README.md)

Solution
--------

- We have created a xcode console application using swift to fulfill the requirements
- Relevant Comments are added in the code 
- All the functions are covered by unit tests

Usage
-----
Here's an image of a console application:

![Toy Robot Simulator](https://github.com/RameezHassan/ToyRobotSimulator/blob/master/ToyRobotSimulator/Images/RobortSimulatorConsole.png)

- Commands can be of any case
- Spaces before and after the commands would not impact its validity
- Both of these place commands below are valid and will execute the same operation
 1. **PLACE 2,2,NORTH**
 2. **place2,2,north**
 
Sample Data For Testing
-----------------------
You can use following commands in the application:

    PLACE X,Y,F (Where X,Y are Integers and F can be "NORTH"|"SOUTH"|"EAST|"WEST")
    MOVE
    LEFT
    RIGHT
    REPORT
    Q(To Close The Application)

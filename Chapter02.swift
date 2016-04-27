/*
 * CHAPTER 02 OF SWIFT APPRENTICE BOOK
 */

import UIKit




/*
 * CONSTANTS
 */

let number: Int = 10
let pi: Double = 3.1415926

//number = 0 //error! can't change contant value!




/*
 * VARIABLES
 */

var variableNumber: Int = 42

variableNumber = 10
variableNumber = 10_000




/*
 * TYPE CONVERSION
 */

var integer: Int = 100
var decimal: Double = 12.5

//integer = decimal //error cannot convert different data types automatically
integer = Int(decimal) //use explicit convert!


let myAge: Int = 20
var averageAge: Double = Double(myAge)

averageAge = (averageAge + 30) / 2




/*
 * TUPLES
 */

let coordinates: (Int, Int) = (2, 3)
let doubleCoordinates: (Double, Double) = (2.5, 3.6)
let doubleIntCoordinates: (Double, Int) = (6.2, 12)

let x: Int = coordinates.0
let y: Int = coordinates.1

let coordinatesNamed: (x: Int, y: Int) = (2, 15)
let xCoord: Int = coordinatesNamed.x
let yCoord: Int = coordinatesNamed.y

let coordinates3D: (x: Int, y: Int, z: Int) = (1, 3, 5)
let (xVal, yVal, zVal) = coordinates3D //will create 3 variables and assign their values to coresponding parts of the tuple
let (xValue, yValue, _) = coordinates3D //will ignore third element of tuple

var dayAvgTemperature: (day: Int, month: Int, year: Int, averageTemperature: Double) = (16, 9, 1995, 19.5)
let (day, _, _, year) = dayAvgTemperature //read only day and average temperature

let (day2) = dayAvgTemperature //will assign the whole tuple
//let (day3, day4) = dayAvgTemperature //error! tuple elements count don't match

let (day5) = integer //will simply assign another variable's value

//integer = Int(dayAvgTemperature) //won't convert

dayAvgTemperature.averageTemperature = 20.6




/*
 * TYPE INFERENCE
 */

let typeInferredInt = 15
let typeInferredDouble = 3.1415926

let inferredTuple = (14, 27)
let firstElement = inferredTuple.0

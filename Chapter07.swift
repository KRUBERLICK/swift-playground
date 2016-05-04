//: Playground - noun: a place where people can play

import UIKit

/*
 * Chapter 07 from Swift Apprentice
 */

/*
 * A simple function declaration
 */
func printMyName() {
    print("Daniel Ilchishyn")
}

/*
 * Function with parameter
 */
func printMultipleOfFive(multiplier: Int) {
    print("\(multiplier) * 5 = \(multiplier * 5)")
}
printMultipleOfFive(10)

/*
 * Function with two parameters
 */
func printMultipleOf(multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(10, andValue: 12)

/*
 * Give the external name to parameter
 */
func printAdditionOf(firstValue: Int, and secondValue: Int) {
    print("\(firstValue) + \(secondValue) = \(firstValue + secondValue)")
}
printAdditionOf(5, and: 7)

/*
 * Without external name at all
 */
func printSubstractionOf(firstValue: Int, _ secondValue: Int) {
    print("\(firstValue) - \(secondValue) = \(firstValue - secondValue)")
}
printSubstractionOf(5, 8)

/*
 * Give default values to parameters
 */
func someFunc(a: Int = 5, b: Int = 7) {}

/*
 * When no arguments specified, the default values will be used
 */
someFunc()

/*
 * Function that return value
 */
func multiply(number: Int, byValue: Int) -> Int {
    return number * byValue;
}
let result = multiply(5, byValue: 5)

/*
 * Return multiple values using tuples
 */
func multiplyAndDivide(number: Int, by byValue: Int) -> (multiply: Int, divide: Int) {
    return (number * byValue, number / byValue)
}
let (result1, result2) = multiplyAndDivide(25, by: 5)
result1
result2

/*
 * Parameters passed to function are constants by default
 */

/*
 * To change this behavior - use var keyword in front of parameter name
 * However, var parameters are deprecated and will be removed in Swift 3
 */
func myFunc(var param: Int) {
    param += 1
}

/*
 * By default, all parameters are passed-by-value
 * To pass parameter by reference - use inout keyword in from of parameter name
 */
func passByRef(inout param: Int) {
    param += 5
}

/*
 * When calling such function, you need to pass a variable's REFERENCE, not it's VALUE!
 * To do so - put a & sign before the variable
 */
var someVar = 5
someVar
passByRef(&someVar)
someVar

/*
 * Some standart methematical functions
 */
min(4, 7)
max(4, 7)
abs(-65)

/*
 * Mini-exercises
 */
func printFullName(firstName: String, _ lastName: String) {
    print("\(firstName) \(lastName)")
}
printFullName("Daniel", "Ilchishyn")

func calcFullName(firstName: String, lastName: String) -> String {
    return "\(firstName) \(lastName)"
}
let myOwnFullName = calcFullName("Daniel", lastName: "Ilchishyn")

func calcFullNameAsTuple(firstName: String, lastName: String) -> (firstName: String, lastName: String) {
    return (firstName, lastName)
}
let resultTuple = calcFullNameAsTuple("Daniel", lastName: "Ilchishyn")
print(resultTuple.firstName.characters.count + resultTuple.lastName.characters.count)

/*
 * Function can be assigned to variables and constants. Thus, in Swift functions
 * are just another datatype
 */
func add(firstVal: Int, _ secondVal: Int) -> Int {
    return firstVal + secondVal
}

/*
 * Variable's parameter list and return type must be compatile with the function
 */
var functionVar: (Int, Int) -> Int = add

func substract(firstVal: Int, _ secondVal: Int) -> Int {
    return firstVal - secondVal
}

/*
 * Now assign a substract() function to variable. This assignment is totaly legal
 * because the variable type is compatible with this function
 */
functionVar = substract

/*
 * You can now use variable to call a function. Just like any
 * standart function
 */
functionVar(4, 4)

/*
 * Swift enables you to pass function in another function as parameter!
 */
func printResult(function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}
printResult(substract, 8, 4)

/*
 * Challenges
 */
func isNumberDivisible(number: Int, by byNumber: Int) -> Bool {
    return number % byNumber == 0
}
func isPrime(number: Int) -> Bool {
    if number < 0 {
        return false
    }
    
    for i in 2...Int(sqrt(Double(number))) {
        if isNumberDivisible(number, by: i) {
            return false
        }
    }
    
    return true
}
isPrime(7)
isPrime(6)
isPrime(13)

func fibonacci(number: Int) -> Int {
    if number < 0 {
        return 0
    }
    if number < 3 {
        return 1
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(10)

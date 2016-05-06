/*
 * CHAPTER 02 OF SWIFT APPRENTICE BOOK
 */

import UIKit

/*
 * SIMPLE OPARATIONS
 */

let add = 2 + 6
let substract = 6 - 4
let multiply = 4 * 4
let divide = 4 / 2

let two = 2
let six = 6
let addResult = two + six
var addVar = 2
addVar = addVar + 5





/*
 * THE MODULO OPERATION
 */

let modulo = 28 % 10
let moduloDecimal = 11.6 % 1.2





/*
 * SHIFT OPERATIONS
 */

let shiftLeft = 1 << 3
let shiftRight = 32 >> 2
let signedShift = -8 >> 2





/*
 * INCREMENT AND DECREMENT
 */

var counter = 0

counter++ //will be removed in swift 3!
counter-- //will be remover in swift 3!

var start = 8

let prefix = ++start
let postfix = start++

var counter2 = 0

counter2 += 5
counter2 -= 2
counter2 *= 3
counter2 /= 2





/*
 * ORDER OF OPERATIONS
 */

let answer = ((8_000 / (5 * 10)) - 32) >> (29 % 5)
let answer2 = 350 / 5 + 2
let answer3 = 350 / (5 + 2) //use parenthesis to change operations precedence





/*
 * OPERATIONS WITH MIXED TYPES
 */

let hourlyRate = 19.5
let hoursWorked = 10
//let totalCost = hourlyRate * hoursWorked //error! swift forces to explicitly convert types!
let totalCost = hourlyRate * Double(hoursWorked)

let testNumber = 6
let evenOdd = testNumber % 2

var answer4 = 0
answer4++
answer4 += 10
answer4 *= 10
answer4 >> 3





/*
 * BOOLEAN OPERATORS
 */

let yes: Bool = true
let no: Bool = false

let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualTwo = (1 != 2)
let isOneGreaterThanTwo = (1 > 2)
let isOneLessThanTwo = (1 < 2)





/*
 * BOOLEAN LOGIC
 */

let and = true && false
let or = true || false

let andTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4

let orTrue = 1 < 2 || 3 > 4
let orFalse = 1 == 2 || 3 == 4

let andOr = (1 < 2 && 3 > 4) || 1 < 4

let myAge = 20
let isTeenager = (myAge > 13) && (myAge < 18)

let theirAge = 30
let bothTeenagers = isTeenager && theirAge > 13 && theirAge < 18

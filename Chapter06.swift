//: Playground - noun: a place where people can play

import UIKit

/*
 * Chapter 6 from Swift Apprentice
 */

/*
 * This is a closed range datatype. The range goes from 0 to 5
 * both inclusive 0 and 5
 */
let closedRange = 0...5

/*
 * This is a half-open range. The range goes from to 5 inclusive 0
 * but not the 5 (0, 1, 2, 3, 4)
 */
let halfOpen = 0..<5

/*
 * Time of the day rewritten with ranges
 */
let hourOfDay = 12
let timeOfDay: String

switch (hourOfDay) {
case 0...5:
    timeOfDay = "Early morning"
case 6...11:
    timeOfDay = "Morning"
case 12...16:
    timeOfDay = "Afternoon"
case 17...19:
    timeOfDay = "Evening"
case 20..<24:
    timeOfDay = "Late evening"
default:
    timeOfDay = "INVALID HOUR!"
}

/*
 * A for loop example
 */
var count = 10
var sum = 0
for var i = 1; i <= count; i++ {
    sum += i
}

/*
 * For-in loop
 */
count = 10
sum = 0

for i in 1...count {
    sum += i
}

/*
 * If you don't need to use a loop counter, you're free to replace
 * it with underscore
 */
for _ in 0..<count {
    sum += 1
}

/*
 * While loop example
 */
sum = 1

while sum < 1000 {
    sum += sum + 1
}

/*
 * Repeat-while loop example
 */
sum = 1

repeat {
    sum += sum + 1
} while (sum < 1000)

/*
 * Use break operator to manually terminate the loop
 */
sum = 1

while true {
    sum += sum + 1
    if sum > 1000 {
        break
    }
}

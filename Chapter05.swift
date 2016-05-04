//: Playground - noun: a place where people can play

import UIKit

/*
 * Chapter 5 of Swift Apprentice
 */

/*
 * If statement
 */
if (2 < 5) {
    print("2 < 5")
}

/*
 * If statement with else clause
 */
if (2 > 5) {
    print("2 > 5")
} else {
    print("2 <= 5")
}

/*
 * If-else chain
 */
let hourOfDay = 12
let timeOfDay: String

if (hourOfDay < 6) {
    timeOfDay = "Early morning"
} else if (hourOfDay < 12) {
    timeOfDay = "Morning"
} else if (hourOfDay < 17) {
    timeOfDay = "Afternoon"
} else if (hourOfDay < 20) {
    timeOfDay = "Evening"
} else if (hourOfDay < 24) {
    timeOfDay = "Late evening"
} else {
    timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

/*
 * Variable scope
 */
var hoursWorked = 45
var price = 0

if (hoursWorked > 40) {
    let hoursOver40 = hoursWorked - 40 //this constant has local scope
    price += hoursOver40 * 50
    hoursWorked -= hoursOver40
}
price += hoursWorked * 25
print(price)

//print(hoursOver40) //will produce an error!

/*
 * Ternary operator
 */
let a = 5;
let b = 12;
let min = a < b ? a : b;
let max = a > b ? a : b;

/*
 * Mini-exercise
 */
let myAge = 20;
if (myAge >= 13 && myAge <= 19) {
    print("Teenager")
} else {
    print("Not a teenager")
}

/*
 * Switch statement with int constant
 */
let number = 10;

switch (number) {
case 0:
    print("Zero")
default:
    print("Non-zero")
}

let number2 = 10
switch (number2) {
case 10:
    print("It's ten!")
default:
    break
}

/*
 * Switch with String
 */
let string = "Dog"
switch (string) {
case "Cat", "Dog": //you can use more than one value for the same case
    print("Animal is a house pet.")
default:
    print("Animal is not a house pet.")
}

/*
 * Time of day rewritten with switch statement
 */
let hourOfDay2 = 12
let timeOfDay2: String

switch(hourOfDay) {
case 0, 1, 2, 3, 4, 5:
    timeOfDay2 = "Early morning"
case 6, 7, 8, 9, 10, 11:
    timeOfDay2 = "Morning"
case 12, 13, 14, 15, 16:
    timeOfDay2 = "Afternoon"
case 17, 18, 19:
    timeOfDay2 = "Evening"
case 20, 21, 22, 23:
    timeOfDay2 = "Late evening"
default:
    timeOfDay2 = "INVALID HOUR"
}
print(timeOfDay2)

/*
 * Using let-where syntax
 */
let number3 = 10
switch (number) {
case let x where x % 2 == 0:
    print("Even")
default:
    print("Not even")
}

/*
 * Switch with tuples. Using the partial matching
 */
let coordinates: (x: Int, y: Int, z: Int) = (3, 2, 5)

switch(coordinates) {
case (0, 0, 0):
    print("Origin")
case (_, 0, 0):
    print("On X axis")
case (0, _, 0):
    print("On Y axis")
case (0, 0, _):
    print("On Z axis")
default:
    print("Somwere in space")
}

/*
 * If you don't want to ignore values
 */
switch (coordinates) {
case (0, 0, 0):
    print("Origin")
case (let x, 0, 0):
    print("On the x-axis at x = \(x)")
case (0, let y, 0):
    print("On the y-axis at y = \(y)")
case (0, 0, let z):
    print("On the z-axis at z = \(z)")
case (let x, let y, let z):
    print("Somewhere in space at x = \(x), y = \(y), z = \(z)")
}

/*
 * You can use let-where syntax to match more complex conditions
 */
switch (coordinates) {
case (let x, let y, _) where y == x:
    print("Along the y = x line.")
case (let x, let y, _) where y == x * x:
    print("Along the y = x^2 line.")
default:
    break
}

/*
 * Mini-exercises
 */
let age = 20
var lifeStage: String
switch(age) {
case let x where x >= 0 && x <= 2:
    lifeStage = "infant"
case let x where x >= 3 && x <= 12:
    lifeStage = "child"
case let x where x >= 13 && x <= 19:
    lifeStage = "teenager"
case let x where x >= 20 && x <= 39:
    lifeStage = "adult"
case let x where x >= 40 && x <= 60:
    lifeStage = "middle aged"
case let x where x >= 61:
    lifeStage = "elderly"
default:
    lifeStage = "invalid"
}
print(lifeStage)

let person: (name: String, age: Int) = ("Daniel", 20)
switch (person) {
case (let name, let age) where age >= 0 && age <= 2:
    print("\(name) is infant")
case (let name, let age) where age >= 3 && age <= 12:
    print("\(name) is child")
case (let name, let age) where age >= 13 && age <= 19:
    print("\(name) is teenager")
case (let name, let age) where age >= 20 && age <= 39:
    print("\(name) is adult")
case (let name, let age) where age >= 40 && age <= 60:
    print("\(name) is middle aged")
case (let name, let age) where age >= 61:
    print("\(name) is elderly")
default:
    print("\(person.name) has invalid age!")
}

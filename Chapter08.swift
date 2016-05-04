//: Playground - noun: a place where people can play

import UIKit

/*
 * Chapter 8 from Swift Apprentice
 */

/*
 * This variable can hold a closure
 */
var multiplyClosure: (Int, Int) -> Int

/*
 * Assign a closure to variable
 */
multiplyClosure = {(first: Int, second: Int) -> Int in
    return first * second
}

/*
 * Execute closure. The same as ordinal function
 */
multiplyClosure(4, 2)

/*
 * When the last statement of closure is an expression, Swift
 * can automaticaly regards it as return
 */
multiplyClosure = {(first: Int, second: Int) -> Int in
    first * second
}

/*
 * Shorten closure syntax even more by removing the return type.
 * Because of the type inference Swift can infer the return type
 * automaticaly
 */
multiplyClosure = {(first: Int, second: Int) in
    first * second
}

/*
 * You can also omit the parameter types
 */
multiplyClosure = {(first, second) in
    first * second
}

/*
 * Finally, if you want you can even omit parameters list.
 * Here, $0 refers to the first parameter, $1 to second and so on...
 */
multiplyClosure = {
    $0 * $1
}

/*
 * Function that takes a function parameter
 */
func operateOnNumbers(a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    
    print(result)
    
    return result
}

/*
 * Declare the add closure and pass it to operateOnNumbers() function
 */
let addClosure = {(a: Int, b: Int) -> Int in
    return a + b
}
operateOnNumbers(5, 7, operation: addClosure)

/*
 * You can define the closure inline with the function call
 */
operateOnNumbers(5, 7, operation: { (a: Int, b: Int) -> Int in
    a - b
})

/*
 * If the closure is the last parameter in list, you can move it
 * outside of the function call.
 * This is called a trailing closure syntax
 */
operateOnNumbers(5, 7) {(a, b) in
    a - b
}

/*
 * Here's a closure with no return value and no parameters
 */
let voidClosure: () -> Void = {
    print("Hello!")
}

/*
 * Variable capture
 */
var counter = 0
let incrementCounter = {
    counter += 1
}
incrementCounter()
incrementCounter()
incrementCounter()
counter

/*
 * Variable capture usage
 */
func countingClosure() -> (() -> Int) {
    var counter = 0
    let incrementCounter: () -> Int = {
        return counter++
    }
    
    return incrementCounter
}

let counter1 = countingClosure()
let counter2 = countingClosure()

counter1()
counter2()
counter1()
counter2()
counter1()
counter2()

/*
 * Challenges
 */
func repeatTask(times: Int, task: () -> Void) {
    for _ in 0..<times {
        task()
    }
}
repeatTask(5, task: {() -> Void in
    print("Hello, World!")
})

func mathSum(times: Int, operation: (Int) -> Int) -> Int {
    var sum = 0
    
    for i in 1...times {
        print("Current sum is \(sum)")
        sum += operation(i)
    }
    
    return sum
}

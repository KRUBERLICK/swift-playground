//: Playground - noun: a place where people can play

import UIKit

/*
 * Chapter 9 from Swift Apprentice
 */

/* Declare the optional variable */
var errorCode: Int?

/* Give some value to variable */
errorCode = 100

/* Or you can initialize it with nil, which will stand for
   the absence of value */
errorCode = nil

/* Mini-exercise */
var myFavouriteSong: String?
myFavouriteSong = nil

let ageInteger: Int? = 30
print(ageInteger)

/* You cannot use an optional in expressions before unwrapping it */
//let a = ageInteger + 5

/* Force unwrapping */
var authorName: String? = "Daniel Ilchishyn"
var unwrappedAuthorName = authorName!

/* If you'll try to force-unwrap an optional with no value,
   a runtime error will occur */
authorName = nil
//print(authorName!)

/* Check if an optional contains nil value before
 unwrapping it */
if authorName != nil {
    let unwrappedValue = authorName!
    print("Author is \(unwrappedValue)")
} else {
    print("No author.")
}

/* If-let binding usage */
if let unwrappedAuthorName: String = authorName {
    print("Author is \(unwrappedAuthorName)")
} else {
    print("No author.")
}

/* It is possible to unwrap multiple values using if-let */
authorName = "Daniel"
let authorAge: Int? = 20

if let name = authorName, age = authorAge {
    print("The author is \(name), he's \(age).")
} else {
    print("No author or no age")
}

/* Mini-exercises */

myFavouriteSong = "Parkway Drive - Pandora"

if let mySong = myFavouriteSong {
    print(mySong)
} else {
    print("I don't have a favourite song.")
}

/* Nil coalescing */
var optionalInt: Int? = 10
var result: Int = optionalInt ?? 0

/* Challenges */

func divideIfWhole(value: Int, by divisor: Int) -> Int? {
    return value % divisor == 0 ? value / divisor : nil
}

let value = 10
let divisor = 2

print("It divides \(divideIfWhole(value, by: divisor) ?? 0) times")

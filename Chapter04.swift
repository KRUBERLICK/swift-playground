//: Playground - noun: a place where people can play

import UIKit

/*
 * Chapter 4 of Swift Apprentice
 */

/*
 * Variables of type Character store a single character
 * It may be any character symbol, even emoji
 */
let characterA: Character = "a"
let characterDog: Character = "🐶"

/*
 * String datatype stores multiple characters
 */
let stringDog: String = "Dog" //"Dog" is called the String Literal

/*
 * Don't forget about type inference!
 */
let stringCat = "Cat"

/*
 * + operator applied to strings concatenes two strings
 * into one
 */
let fullName = "Daniel" + " Ilchishyn"
var anotherName = "Jack"
anotherName += " Bower"

/*
 * To add a character to string - use explicit type cast!
 */
let atSign: Character = "@"
let emailString = "kruberlick" + String(atSign) + "gmail.com"

/*
 * String interpolation lets you embed another values into string
 */
let greeting = "Hello, \(fullName)!"

/*
 * But unfortunately, you can't customize the output when using
 * interpolation
 */
let oneThird = 1.0 / 3.0
let oneThirdString = "One third is \(oneThird)"

/*
 * To compare two strings simply use a == operator
 */
let guess = "dog"
let dogEqualsCat = guess == "cat"
let dogEqualsDog = guess == "dog"

/*
 * Relational operators are also compatible with strings
 */
let order = "cat" < "dog"
let order2 = "zippo" < "hello"

/*
 * These two string have different inner representation, but look
 * the same. Swift is able to compare them and the result is true,
 * comparing to other languages where string are being compared
 * character-by-character. Swift uses such feature as Canonicalization,
 * before checking two string for equality, it canonicalizes them
 * which means that they converted to the same special character
 * representation
 */
let stringA = "café"
let stringB = "cafe\u{0301}" //here \u{0301} is a Unicode shorthand
let equal = stringA == stringB

/*
 * Canonicalization takes place when it comes to get the characters count
 * of a string
 */
stringA.characters.count
stringB.characters.count

/*
 * You can easily create uppercase and lowercase strings
 */
let originalString = "Hello, World!"
let lowercaseString = originalString.lowercaseString
let uppercaseString = originalString.uppercaseString

/*
 * Exercises
 */
let firstName = "Daniel"
let lastName = "Ilchishyn"
let myFullName = firstName + " " + lastName
let myGreeting = "Hello, my name is \(myFullName)!"

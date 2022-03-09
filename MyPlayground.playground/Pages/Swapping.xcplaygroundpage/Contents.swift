//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

var a = 10
var b = 20
var temp : Int?

print("Before Swapping a is \(a) & b is \(b)")

temp = a
a = b
b = temp!

print("After Swapping using third variable -> a is \(a) & b is \(b)")

/* Without Third Variable*/

a = a + b
a = a - b
b = a - b

print("After Swapping Without third Variable -> a is \(a) & b is \(b)")
 

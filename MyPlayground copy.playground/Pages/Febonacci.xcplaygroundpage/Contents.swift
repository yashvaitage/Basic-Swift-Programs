//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
var fn : Int = 0

var temp : Int?

for i in 1...5{
    temp = fn + i
    fn = i
    i = temp!
    
    print("\(fn) + \(i) = \(temp!)")
}







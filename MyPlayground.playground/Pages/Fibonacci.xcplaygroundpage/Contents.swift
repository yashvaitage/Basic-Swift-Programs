//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
var fn : Int = 0
var sn : Int = 1
var temp : Int?

for i in 1...30{
    temp = fn + i
    fn = i
    sn = temp!
    
    print("Fibonacci Series : \(temp!)")
}







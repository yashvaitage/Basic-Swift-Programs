//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

let hello = { print("hello nishant")}
hello()

var names = {(name:String) in print("Hello \(name)!")}
names("Nishant")


/* Closures wirh parameter & return type */
let square = {(_ a : Int) in return a*a }
print("Square is :", square(25))


let myAddition = {(a : Int, b:Int)-> String in
    let calculate = "The total is : \(a+b)"
    return calculate
}

let total = myAddition(20,30)
print(total)


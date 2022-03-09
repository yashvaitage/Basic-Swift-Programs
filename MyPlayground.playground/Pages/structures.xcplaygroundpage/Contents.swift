//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

struct Floor{
    var floorNumber = 0
    var floorHeight = 0
}

class House{
    var floor = Floor()
    var lights = false
    var houseOwner : String?
}

/* Structure */

let myFloor = (floorNumber: 8, floorHeight: 20)
print ("***** STRUCTURE *****")
print("My Floor Value : \(myFloor.floorNumber)")


var otherFloor = myFloor
otherFloor.floorNumber = 10
print("Other Floor Value : \(otherFloor.floorNumber)")
print("My Floor Value : \(myFloor.floorNumber)\n")


/* Structure */
print ("***** CLASS *****")
let myHouse = House()
myHouse.houseOwner = "Nishant"
myHouse.lights = true
print("My House Owner : \(myHouse.houseOwner!)")

let otherHouse = House()
otherHouse.houseOwner = "Yashdeep"
print("Before House Owner : \(otherHouse.houseOwner!)")
print("Other House Owner : \(myHouse.houseOwner!)")







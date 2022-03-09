//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Bike{
    var name = "Ignitor"
    var gear = 5
}

var myBike = Bike()

myBike.name
myBike.gear



class Student{
    var name = "Nishant Vaitage"
    var roll = 29
    var course = "MCA"
    var fees : Double = 63650
    
    
    func studentDetails(){
        print ("Student name is : \(name), his Roll_No is \(roll) and he is doing \(course) course, college fee is \(fees)")
        
    }
}

var stud = Student()
stud.studentDetails()
stud.name
stud.name = "Yashdeep Vaitage"
print ("Updated Name : \(stud.name)")



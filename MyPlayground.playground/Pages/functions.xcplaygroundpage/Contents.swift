//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*Witout ReturnType*/

func sayHello(){
    print("Hello Nishant")
}
sayHello()

/* Function with arrguments*/

func myFunction(name : String)
{
    print("Hello", name)
}
myFunction(name:"Nishant !")


func anotherFunction(name : String, _ age: Int)
{
    print("Hello \(name), Your age is \(age)")
}
anotherFunction(name: "Nishant", 24)


/* Function With return type*/

func squareNum (_ num: Double) -> Double
{
    return num*num;
}

print("Square is : \(squareNum(25))")



func addition(_ a:Int,_ b:Int)->Int
{
    return a+b
}
print("Addition is : \(addition(10,50))")



//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
var a : [Int] = [10,20,30,40,50,60,70,80]

a[0]


var names : [String]
names = ["Nishant", "Amol", "Pratik"]
print(names)

names.append("Ashish")
print (names)

(names.count)

names += ["Yashdeep"]
print(names)

if names.isEmpty{
    print("The array is empty!")
}else{
    print("This is your array : ", names)
}


names.insert("Unknown", at: 1)
print (names)

names.remove(at: 1)
print(names)

names.removeLast()
(names)

for name in names{
    print ("Hello \(name)")
}


var newArr = ["iOS", "Android", "PHP", "Magento"]
print(newArr)

type(of: newArr)


//var numbers : [Int] = [10,45,35,85,64,05,75]
//
//var largest = 0
//for i in numbers{
//    if numbers[i] > largest{
//        largest = numbers[i]
//    }
//}
//print (largest)




//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
var indexOfSwift : [Int : String] = [:]
indexOfSwift = [1:"Basic Introduction", 2:"History", 3:"Xcode", 4:"Operators", 5:"DataTypes"]
indexOfSwift[6] = "Closures"
print(indexOfSwift)

indexOfSwift.count

if indexOfSwift .isEmpty{
    print("The index of swift is empty !")
}else{
    print("Tha index of swift is : \(indexOfSwift)")
}


for (index, topic) in indexOfSwift{
    print("On Index : \(index) - \(topic)")
}

indexOfSwift[1]
indexOfSwift[5]










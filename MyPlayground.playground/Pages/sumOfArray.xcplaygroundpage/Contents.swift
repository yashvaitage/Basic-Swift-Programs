//: [Previous](@previous)

import Foundation

var arr : [Int] = [1,2,3,4,5,6,7,8,9]
var count = 0
for i in arr{ //loop iterate 1 to 5
    
    print("\(i)+\(count) =") // print value of i 1-5 & sum variable stored value
    count = count + i // for eg 1+0, 2+1, 3+3, 4+6, 5+10
    print(count,"\n") //print sum
    
}

print ("\nTotal Addition is \(count)")

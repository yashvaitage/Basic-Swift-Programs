
import Foundation

var a,b : Int!

a = 10
b = 20

let c = a+b
print("Addition of \(a!) + \(b!) = \(c) \n")

//-----------------------------------------------
for i in 1...5{
    let c = i + i
    print ("The value of \(i) + \(i) = \(c)")
}

//-----------------------------------------------

var sum = 0
for i in 1..<10{ //loop iterate 1 to 5
    
    print("\(i)+\(sum) =") // print value of i 1-5 & sum variable stored value
    sum = sum + i // for eg 1+0, 2+1, 3+3, 4+6, 5+10
    print(sum,"\n") //print sum
    
}

print ("\nTotal Addition is \(sum)")

------------------------------------------------------


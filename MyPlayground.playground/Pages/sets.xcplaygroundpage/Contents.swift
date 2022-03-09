import UIKit

var greeting = "Hello, playground"

var someSet = Set<Int>()
someSet.count

someSet.insert(08)
print(someSet)

someSet.isEmpty

someSet.remove(08)
print(someSet)

someSet = [1,1,2,3,4,5,5,6]
print(someSet)


someSet.insert(08)
print(someSet)

someSet.remove(5)
print(someSet)

someSet.contains(5)

for number in someSet{
    print(number)
}
print("Sorted Set")
for number in someSet.sorted(){
    print(number)
}

let evens : Set = [10,12,14,16,18]
let odds  : Set = [5,7,9,11,13]
let primes      = [2,3,5,7]


print("Even Numbers - ",evens)
print("Odd Numbers - ",odds)
print("Odd-Even : Uninon set opertion is \(odds.union(evens).sorted())")
print("Odd-Even : Intersection set opertion is \(odds.intersection(evens).sorted())")
print("Odd-Even : Differance/Subtracting set opertion is \(odds.subtracting(evens).sorted())")

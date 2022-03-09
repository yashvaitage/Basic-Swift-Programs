import Foundation

class Member1{
    var name : String?
    var package : Double = 0.0
    let designation = "iOS Developer Trainee"
}

class Member2 : Member1{
    func myData(){
        name = "Amol Khade"
        package = 3.5
        print("Employee name is \(name!) & His pakage is \(package) as a \(designation)")
    }
    
}

var m2 = Member2()

m2.myData()





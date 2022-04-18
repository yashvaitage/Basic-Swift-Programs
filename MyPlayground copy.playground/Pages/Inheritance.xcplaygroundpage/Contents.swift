import Foundation
import CoreGraphics

class Team{
    var name : String?
    var package : Float?
    let designation = "iOS Developer Trainee"
    
}

class Member1 : Team{
    func myTeam(){
        name = "Nishant"
        package = 3.0
        print ("There is Team Details")
        print ("Team Member \(name!) is a \(designation) with package \(package!)")
    }
    
}

//let team = Team()
let m1 = Member1()


print(m1.myTeam())





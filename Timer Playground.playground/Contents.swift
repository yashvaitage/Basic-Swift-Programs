import UIKit
import Foundation

class myClass{
    var time: Float = 0
    func runTimer(){
        Timer.scheduledTimer(timeInterval: 1,
                             target: self,
                             selector: #selector(printTime),
                             userInfo: nil,
                             repeats: true)
    }
    
    @objc func printTime(){
        //print("Hii")
        time += 1
        print(time)
        //print(String(format: "%.1f", time))
    }
}

var myObj = myClass()
myObj.runTimer()

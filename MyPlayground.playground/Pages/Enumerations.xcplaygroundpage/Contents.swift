enum NetworkBandwidth
{
    case twoG
    case fourG
    case wifi
}

var currentNetwork = NetworkBandwidth.wifi

switch(currentNetwork)
{
    case .twoG:
        print("This is 2G")
    
    case .fourG:
        print("This is 4G")
    
    case .wifi:
        print("This is WiFi")
}

//-----------------------------------------------------

enum conditions
{
    case perfect,good,average,bad
}

let currentCondition = conditions.good
switch(currentCondition){
case .good:
    print("I am good")
case .perfect:
    print("I am Perfect")
case .average:
    print("Average")
case .bad:
    print("I am feeling bad")
}




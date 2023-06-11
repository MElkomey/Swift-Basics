
//enum Level{
//    case one
//    case two
//    case three
//}

//var useLevel = Level.one
//to use raw value
enum Level : String{
    case one = "Beginner"
    case two = "Master"
    case three
}
var userLevel :Level = .one

struct User{
    var name:String
    var points:Int
    var level:Level
}

var user = User(name: "Ali", points: 5, level: .one)
user.level


func getSeconds (level:Level) -> Int{
    switch level{
    case .one:
        return 12
    case .two:
        return 9
    case .three:
        return 5
    }
}

getSeconds(level: .three)
user.level.rawValue

class Expert{
    var name:String
    var bio:String
    var likes:Int
    
    init(name:String , bio:String , likes:Int) {
        self.name = name
        self.bio = bio
        self.likes = likes
    }
    
    func addNewLike(){
        likes += 1
    }
    
    func getName() ->String{
        return "Expert name : \(name)"
    }
}

class Developer : Expert{
    var arrLanguages:[String]
    
    init(name: String, bio: String, likes: Int , arrLanguages:[String]) {
        self.arrLanguages = arrLanguages
        super.init(name: name, bio: bio, likes: likes)
    }
    //function overriding
    override func getName() -> String {
        return "Developer name : \(name)"
    }
}


class Lawyer : Expert{
    var numberOfCases:Int
    
    init(name: String, bio: String, likes: Int , numberOfCases:Int) {
        self.numberOfCases=numberOfCases
        super.init(name: name, bio: bio, likes: likes)
    }
    
    override func getName() -> String {
        return "Lawyer name : \(name)"
    }
}

var developer1 = Developer(name: "Ali", bio: "IOS Developer", likes: 10, arrLanguages: ["Swift", "Dart"])
var lawyer1 = Lawyer(name: "Ahmed", bio: "international law", likes: 5, numberOfCases: 20)


//print(developer1.getName())
//print(lawyer1.getName())

//polymorphism
var expertArray :[Expert] = [developer1 , lawyer1]

for expert in expertArray{
    print(expert.getName())
    if let developer = expert as? Developer {
        print(developer.arrLanguages)
    }else if let lawyer = expert as? Lawyer {
        print(lawyer.numberOfCases)
    }
}

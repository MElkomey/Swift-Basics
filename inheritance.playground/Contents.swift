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
}

class Developer : Expert{
    var arrLanguages:[String]
    
    init(name: String, bio: String, likes: Int , arrLanguages:[String]) {
        self.arrLanguages = arrLanguages
        super.init(name: name, bio: bio, likes: likes)
    }
}

var developer1 = Developer(name: "Mohamed", bio: "IOS developer", likes: 10, arrLanguages: ["Swift", "Dart"])

developer1.name
developer1.bio
developer1.likes
developer1.arrLanguages
developer1.addNewLike()
developer1.likes

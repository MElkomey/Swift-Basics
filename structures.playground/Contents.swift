// if a struct equal another struct it will not affect the values if mutated in any one of them
struct Post {
    var title:String
    var body:String
    var likes:Int
    var views:Int
    
    func isPopular() ->Bool{
        return views > 100
    }
    
   mutating func addNewLike(){
        likes += 1
    }
}

var firstPost = Post(title: "new post", body: "this is first post", likes: 10, views: 200)

firstPost.title
firstPost.body
firstPost.likes
firstPost.views
firstPost.isPopular()
firstPost.addNewLike()

var secondPost = firstPost
firstPost.addNewLike()
firstPost.likes
secondPost.likes

// if a class object equal another object it will  affect the values if mutated in any one of them as they are pointing to the same reference

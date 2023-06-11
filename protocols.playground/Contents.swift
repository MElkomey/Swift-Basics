
protocol TableView{
    func numberOfRows() ->Int
    func showItemAtIndex(index:Int)
}

class Followers : TableView {
    var followers :[String] = ["mohamed" , "ali" , "mansour"]
    func numberOfRows() -> Int {
        return followers.count
    }
    
    func showItemAtIndex(index: Int) {
        print("at index \(index) : \(followers[index])")
    }
}

var follower = Followers()
follower.followers
follower.numberOfRows()
follower.showItemAtIndex(index: 1)



var arrNums = [9,5,11,8,13]

outerLoop: for _ in 1...5{
    for item in arrNums{
        if item % 2 == 0{
            //break
            //continue
            //break outerLoop
            continue outerLoop
        }
        print(item)
    }
    
}

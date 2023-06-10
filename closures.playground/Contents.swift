//with closure
func getFilteredSingleArray(closure: (Int)->Bool ,arr:[Int]) ->[Int]{
    var filteredArray = [Int]()
    
    for item in arr{
        if closure(item){
            filteredArray.append(item)
        }
    }
    return filteredArray
}

var filtredResult = getFilteredSingleArray(closure: { (num)->Bool in return num % 2 == 0}, arr: [1,9,4,8,4,7,55,6,12])
print(filtredResult)

func isEven(num:Int) ->Bool {
    return num % 2 == 0
}

func isOdd(num:Int) ->Bool {
    return num % 2 != 0
}

filtredResult = getFilteredSingleArray(closure:isEven(num:), arr: [1,9,4,8,4,7,55,6,12])
print(filtredResult)

filtredResult = getFilteredSingleArray(closure:isOdd(num:), arr: [1,9,4,8,4,7,55,6,12])
print(filtredResult)


//remover return
 filtredResult = getFilteredSingleArray(closure: { (num)->Bool in  num % 2 == 0}, arr: [1,9,4,8,4,7,55,6,12])
print(filtredResult)



// $0  this is the first parameter in the closure , $1 ,$2 using
filtredResult = getFilteredSingleArray(closure: { $0 % 2 == 0}, arr: [1,9,4,8,4,7,55,6,12])
print(filtredResult)

//without closuers
func getFilteredArrays(arr1: [Int]) ->(even:[Int],odd:[Int]) {
    var arrayEven = [Int]()
    var arrayOdd :[Int] = []
    for item in arr1{
        if(item % 2 == 0){
            arrayEven.append(item)
        }else{
            arrayOdd.append(item)
        }
    }
    return (arrayEven,arrayOdd)
}

var tupl = getFilteredArrays(arr1: [2,4,8,4,9,1,33,45,6,7])
print(tupl.even)
print(tupl.odd)

//filtering

var names = ["Mohamed","ali","nour","Majed"]
var tempFiltredNames = names.filter({(name)->Bool in
   // return
    name.hasPrefix("M")})
print(tempFiltredNames)

//same result
var tempFiltred = names.filter({$0.hasPrefix("M")})
print(tempFiltred)


//auto closure
func printMsg(closure: @autoclosure ()->Bool , msg:String){
    if closure(){
        print(msg)
    }
}
printMsg(closure: true, msg: "auto closure")

// escape closure
var closureArray :[()->()] = []
func printMsg2(msg:String, closure: @escaping ()->()) {
    print(msg)
    closure()
    closureArray.append(closure)
}
printMsg2(msg: "hello from func") {
    print("hello from closure")
}

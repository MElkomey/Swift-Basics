
func showSignInMessage(using msg: String){
   //let msg = "please signin to continue"
    print(msg)
}
func showSignInMessage1(msg: String){
   //let msg = "please signin to continue"
    print(msg)
}

//comment screen
showSignInMessage(using: "you must sign in to make comment")

//message screen
showSignInMessage1(msg: "you must sign in to send message")


func getSum(num1:Int,num2:Int) ->Int{
    let res = num1 + num2
    return res
}

print (getSum(num1: 5, num2: 4))


func showErrorMessage(msg: String = "process not completed") ->Void {
    print(msg)
}

showErrorMessage()
showErrorMessage(msg:"no internet connection")

func showErrorMessage1(_ msg: String = "process not completed") ->Void {
    print(msg)
}
showErrorMessage1("no internet connection")

func sub(num1:Int? , num2:Int) ->Int{
    return (num1 ?? 10) - num2
}

print(sub(num1: nil, num2: 5))

func getMinMax(arr : [Int]) ->(min:Int,max:Int){
var maxNum : Int = arr[0]
var minNum : Int = arr[0]
    for item in arr{
        if item < minNum {
            minNum = item
        }else if item > maxNum {
            maxNum = item
        }
    }
    return (minNum,maxNum)
}

var arrNumbers :[Int] = [2,4,0,5,10,90]
var tupl = getMinMax(arr: arrNumbers)
print(tupl.min,tupl.max)


//call by reference
func getPriceWithTax(price: inout Double) ->Double{
    price = price + (price * 0.05)
    return price
}

var price = 100.0

print(getPriceWithTax(price: &price))
print(price)


//recusive
func getFactorial(num:Int) ->Int{
    if num == 1 {
        return 1
    }else{
        return num * getFactorial(num: num-1)
    }
}

getFactorial(num: 5)

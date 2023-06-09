
for i in 1...5{
  // print(i)
}

var counter = 10
for _ in 1...10{
 //   print(counter)
    counter -= 1
}

for i in stride(from: 0, to: 10, by: 1){
   // print(i)
}

for i in stride(from: 0, through: 10, by: 1){
   // print(i)
}

var numbers = [11,4,9,7,4]

for i in 0...numbers.count-1{  // or for i in 0..<numbers.count
   // print(numbers[i])
}

for i in numbers{
  //  print(i)
}

var dictionary = ["name":"mohamed" , "age":"20" ,"city":"kz"]
for item in dictionary{
  //   print("\(item.key) : \(item.value)")
    //print(item)
}

for (key,value) in dictionary{
 //   print("\(key) : \(value)")
    //print(item)
}

for (index,value) in numbers.enumerated(){
    print("\(index) : \(value)")
}

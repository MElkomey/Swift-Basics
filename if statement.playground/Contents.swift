var x = 10 , y = 20
if x>y {
    print("x is great than y")
}else if x==y{
    print("x is equal to y")
}else{
    print("x is less than y")
}


var isBlocked = false

if isBlocked {
    print("access denied")
}else{
    print("access allowed")
}


var max : Int
if x>y {
    max = x
}else{
    max = y
}
print("max = \(max)")
// or inline if
max = x>y ? x : y
print("max = \(max)")

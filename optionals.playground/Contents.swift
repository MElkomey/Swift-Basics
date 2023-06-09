import Darwin

var userName :String?  // ? means username may be nil
print(userName ?? "no username yet")
if userName==nil{
    print("user name required")
}else{
    print("call api")
    print(userName!)// ! means iam sure username will not be nil(un wrapped)
}
 userName="Ahmed"
print(userName ?? "username")

// if username != null ,then name will equal to username and go in parenthesses
if let name = userName {
    print(name)
}

var x :Int?
var y :Int!

print(x ?? 10 + 5)
//print(y  +10)//run time error
print(y ?? 10 + 10)

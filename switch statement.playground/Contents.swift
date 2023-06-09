//some if statements can be replaced by simple switch statement


var score = 3

if score==0{
    print("very bad")
}else if score>0 && score<4{
    print("bad")
}else if score>=4 && score<8{
    print("good")
}else{
    print("excellent")
}


switch score {
case 0,1 :   //0 or 1
    print("very bad")
case 2..<4 :
    print("bad")
case 4..<8 :
    print("good")
default:
    print("excellent")
}

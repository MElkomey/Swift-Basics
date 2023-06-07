
var students = ["ali","mohamed","salah"]
print (students[1])
print(students)

var teachers : [String] = []
print(teachers)
teachers.append("Ebrahim")
teachers.append("said")
print("array after append : \(teachers) ")

teachers += ["khaled", "ali"]
print (teachers)
teachers.insert("shady", at: 1)
print (teachers)
teachers[0] = "salem"
print (teachers)
teachers.removeLast()
print (teachers)
print(teachers.count)


var device0 :[String:String] = ["name":"macbook pro", "color":"white", "processor":"intel-i7"]
var device1 :[String:Any] = ["name":"macbook pro", "color":"white", "processor":"intel-i7","price":1000]
var device2 = ["name":"macbook pro", "color":"white", "processor":"intel-i7"]
print (device2)
print(device1["ram"]) //nil null
print(device1["ram"] ?? "8GB")
device1["capacity"] = "1 TB"
print(device1["capacity"] ?? "500 GB")
device2["color"] = "black"
print(device2)
device2.updateValue("blue", forKey: "color")
print(device2)
device2.removeValue(forKey: "color")
print(device2)
print(device2.count)

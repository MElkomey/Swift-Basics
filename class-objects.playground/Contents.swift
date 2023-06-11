class Car{
    var name:String
    var color:String
    var model:Int
    init(name:String , color:String , model:Int) {
        self.name=name
        self.color=color
        self.model=model
    }
    
    func move(){
        print("car is moving")
    }
}

var car1 = Car(name: "Honda", color: "red", model: 2020)

print(car1.name,car1.color)
car1.move()


var car2:Car
car2=Car(name: "Toyota", color: "Blue", model: 2021)

car2.name
car2.color
car2.model

car2 = car1


car2.name
car2.color
car2.model

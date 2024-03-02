protocol Vehicle {
  var fuel : Float {get set}
  var fuelEfficinet:Float{get}
  func showFuel()
}

protocol Landavehicle : Vehicle{
  var speed : Float{get set}
  func run()
}

class Car : Landavehicle{
  var speed : Float = 30.0
  func run(){
    print("現在スペードは\(speed)km/hです")
  }
}

var sp = Landavehicle()
sp.run()
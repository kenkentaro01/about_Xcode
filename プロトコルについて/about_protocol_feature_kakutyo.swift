protocol Vehicle {
  var fuel : Float {get set}
  var fuelEfficinet:Float{get}
  func showFuel()
}

extension Vehicle {
mutating func addFuel(liter:Float){
  fuel += liter
}

mutating func move(km:Float){
  let remainingFuel = fuel - km / fuelEfficinet
  if remainingFuel >= 0{
    print("\(km)km動きました。")
    fuel = remainingFuel
  }
  else {
    print("ガソリンが足りないので動けません")
  }
}
}

class Car :Vehicle{
  var fuel : Float = 50.0
  var speed : Float = 0.0
  let fuelEfficinet:Float = 10.0
  func showFuel(){print("ガソリンの残りは\(fuel)Lです。")}
  func run(){print("地上を走ります。")}
}

var car = Car()
car.run()
car.showFuel()
car.move(km: 200)
car.showFuel()
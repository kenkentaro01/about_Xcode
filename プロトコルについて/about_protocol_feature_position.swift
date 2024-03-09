protocol Vehicle {
  var fuel : Float {get set}
  var fuelEfficinet:Float{get}
  func showFuel()
}
protocol Landavehicle : Vehicle{
  var speed : Float{get set}
  func run()
}

protocol Beeping{
  func siren()
}


class PatoCar : Landavehicle,Beeping{
  var fuel :Float = 80.0
  var speed : Float = 0.0
  let fuelEfficinet : Float = 15.0
  func showFuel(){print("ハイオク残りは\(fuel)Lです。")}
  func run(){print("地上の上を走ります。")}
  func siren(){print("うーうーうー")}
}

var patocar = PatoCar()
patocar.run()
patocar.showFuel()
patocar.siren()

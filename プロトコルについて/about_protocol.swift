protocol Vehicle {
  var fuel : Float {get set}
  var fuelEfficinet:Float{get}
  func showFuel()
}

// 上記のプロトコルに従ってクラスを記述する
class Car:Vehicle{
  var fuel:Float = 50.0
  var fuelEfficinet:Float = 10.0
  func showFuel(){
    print("ガソリンの残りは\(fuel)Lです。")
  }
}

protocol DescriptionProtocol{
  var description : String{get}
  mutating func change()
}
// 構造体のプロトコルの準拠
struct  ExampleStructure:DescriptionProtocol {
  var description : String = "description"
  mutating func change(){
    description += "changed"
  }
}

// 列挙体のプロトコルの準拠
enum CoinEnumeration:DescriptionProtocol{
  case 表,裏
  var description:String{
    return "現在\(self)"
  }

  mutating func change(){
    if self == .表{
      self = .裏
    }
    else {
      self = .表
    }
  }
}

// 構造体のか出力確認
var b = ExampleStructure()
b.change()
print(b.description)

// 列挙型のか出力確認
var coin = CoinEnumeration.表
print(coin)
print(coin.description)
coin.change()
print(coin.description)

// classのか出力確認
// let fuel_zanryo = Car()
// fuel_zanryo.showFuel()
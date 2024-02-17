// クラスについて
class Car{
  // プロパティ
  // プロパティとは状態のこと。例）車で例えると「速度・車の名前・機内温度など」
  let name : String = "ランサー"
  var temperture :Int = 24

  // メソッド
  // メソッドとは振る舞いのこと　例)車で例えると「アクセルを踏むと前に進む」などなど
  func say() ->() {
    print("\(name) : 室内温度は\(temperture)です。")
  }
}

let myCar = Car() //インスタンスの初期化
myCar.say() //メソッドの利用
myCar.temperture = 27 //プロパティへのアクセス
myCar.say()
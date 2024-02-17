// クラスのオーバーライドについて
// スーパークラスにあるメソッドについて変更したい場合、同名のメソッドをサブクラスにも定義することで実現できる。

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

// 子クラスの作成　Carクラスを継承する
class SuperCar : Car{
  let speed :Int = 40 //新しいプロパティ（状態）を追加

// オーバーライドする場合は先頭にoverrideをつける
  override func say() -> (){
    super.say() //スーパクラスのメソッドの呼び出し方
    print("現在のスピードは\(speed)キロです")
  }
}

let sub_car = SuperCar()
sub_car.say()

// 上記の実行結果は以下のとおりで、sayメソッドが書き換え（オーバライド）られていることがわかる。
// ランサー : 室内温度は24です。
// 現在のスピードは40キロです


let super_car = Car() //親クラスのインスタンスの初期化
super_car.say()

// 上記の実行より親クラス自体は書き換えられているわけではないことが、実行結果からわかる。
// ランサー : 室内温度は24です。
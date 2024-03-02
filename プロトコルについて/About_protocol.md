# プロトコル指向について

プロトコルとは<b>規約</b>という意味。
プロトコルには複数のバラバラのものをあるルールを守らせることによって、1つにまとめる性質がある。

##プロトコルの定義について
```swift
protocol プロトコル名{
必要なプロパティ宣言
必要なメソッド宣言}
```

上記のプロトコル（お約束毎）を下にClassを宣言する場合は以下の書き方になります。
```swift
class クラス名:プロトコル名{

プロトコルの定義に基づいたプロパティ宣言
プロトコルの定義に基づいたメソッド宣言
  }
}
```

##実験
プロトコル宣言を元に記述しているClassの中でプロトコルに記述さていることに違反した場合どのようになるか疑問に思ったのでやって見ました。

about_protocol.swiftにて以下のように違反してみた。
```swift
protocol Vehicle {
  var fuel : Float {get set}
  var fuelEfficinet:Float{get}
  func showFuel()
}

// 上記のプロトコルに従ってクラスを記述する
class Car:Vehicle{
  var fuel:Int = 50.0 →Floatで宣言しなければならないのにInt にして違反してみる。
  let fuelEfficinet:Float = 10.0
  func showFuel(){
    print("ガソリンの残りは\(fuel)Lです。")
  }
}

let fuel_zanryo = Car()
fuel_zanryo.showFuel()
```

## エラーについて
実験を実行してみると以下のようなエラーが生じました。

:::note alert
rotocol requires property 'fuel' with type 'Float'; do you want to add a stub?
  var fuel : Float {get set}
:::

上記のエラーにより、Int型で宣言したところはFloat型にしろよと怒られました。

##　プロトコル宣言で注意するべきこと
* プロトコルの定義ではletを用いて宣言できない。
* プロトコルは構造体および列挙型も準拠することができる。（classだけではない！）
  
### 実験
実際にabout_protocol.swiftのプロトコルの定義のところでlet（定数）を定義して実行してみる。

###エラーについて
実験の実行結果では以下のエラーが出ました。
:::note alert
'let' declarations cannot be computed properties
  let fuel : Float {get set}
:::

これは、プロトコル定義にletを入れられないために怒られたエラーになっています。

###予約語について
about_protocol.swiftにて、mutatingというキーワードがメソッドの前にプロトコルの定義に記述されています。
* mutating
  * プロパティをこのメソッドが変更することを示している。

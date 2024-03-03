# プロトコルの特徴

プロトコル思考を実現するるために重要な3つの特徴

* プロトコルの継承
* プロトコルの拡張
* プロトコルのコンポジション
  
  この3つの特徴についてみていきます。

## 継承について

classの継承と同様な記述方法です。

```swift
protocol 継承先プロトコル:継承元プロトコル{
継承先プロトコルにて追加宣言するプロパティ宣言
継承先プロトコルにて追加宣言するメソッド宣言}
```

## 実験

継承させたプロトコルに書かれている宣言のみでclassを準拠するとエラーが出るの確かめてみる。

親プロトコルの宣言

```swift:親プロトコル
protocol Vehicle {
  var fuel : Float {get set}
  var fuelEfficinet:Float{get}
  func showFuel()
}
```

継承先プロトコルの宣言

```swift:継承先プロトコル
protocol Landavehicle : Vehicle{
  var speed : Float{get set}
  func run()
}
```

継承先のみに準拠したclassの宣言

```swift
class Car : Landavehicle{
  var speed : Float = 30.0
  func run(){
    print("現在スペードは\(speed)km/hです")
  }
}
```

上記のコードによりインスタンスを作成して実行されるか確認してみる。

## エラーについて

:::note alert
about_protocol_feature_keisyo.swift:12:7: error: type 'Car' does not conform to protocol 'Vehicle'
class Car : Landavehicle{
      ^
about_protocol_feature_keisyo.swift:2:7: note: protocol requires property 'fuel' with type 'Float'; do you want to add a stub?
  var fuel : Float {get set}
      ^
about_protocol_feature_keisyo.swift:3:7: note: protocol requires property 'fuelEfficinet' with type 'Float'; do you want to add a stub?
  var fuelEfficinet:Float{get}
      ^
about_protocol_feature_keisyo.swift:4:8: note: protocol requires function 'showFuel()' with type '() -> ()'; do you want to add a stub?
  func showFuel()
       ^
about_protocol_feature_keisyo.swift:19:10: error: 'any Landavehicle' cannot be constructed because it has no accessible initializers
var sp = Landavehicle()
         ^~~~~~~~~~~~
:::

よって、上記のエラーより親元のプロトコルをCarクラスが準拠しないため丁寧に準拠してくれよといった内容のエラーが出ました。

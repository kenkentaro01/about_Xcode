# guardについて

guard文はif文と同じような条件分岐の文法です。条件式がfalseの場合に実行されるように中括弧 {}の処理が実行されます。
if文の場合はtrueの場合実行される処理を記載するので、逆の考えになります。

## guardの定義について
* guard文
```swift
guard 条件式 else {
   条件式がfalseだった場合の処理
   return  
}
```

* guard let文
```swift
guard let 変数 = 変数1 else {
    変数1がnillだった場合の処理
   return  
}
```

* if文（比較）
```swift
if 条件式1 {
    条件式1が真（true）の場合の処理
} else if 条件式2 {
    条件式2が真（true）の場合の処理
.
.
} else {
    どの条件にも一致しなかった場合に実行する処理
}
```

## 実験
#### 実験1
guard let文を「var」にの変数に変えて実行するとどうなるのか。
about_guard.swiftにて以下のように違反してみた。

```swift
let helloStr : String? = nil
func guardletTest () {
     // 2:guard let
   guard var guardStr = helloStr else {
       // helloStrがnilの時にこちらの処理が実行される。
       return print("helloStrはnillが入っています")
   }


   print(guardStr)
}
```
#### 実験2
helloStrが「nill」ではなく空欄の場合エラーが生じるのか。
## 実験結果について
#### 実験1の結果
実験を実行してみると以下のような注意が生じました。
```
 warning: variable 'guardStr' was never mutated; consider changing to 'let' constant
 ```

 結果実行はできたのですが、guardStrを一度しか宣言していないため、「let」（定数）を使用するように推奨されました。
 なので、guard varも特に問題なく宣言できることがわかりました。

 #### 実験2の結果
 空欄の値を入れた時は、nill型と判定されないため{}の処理はされなかった。

## 使用方法
* 変数に「nill」が入った時に、代わりの値を代入したい時に使用できる。
* 変数に「nill」が入った時に、エラー通知をする処理などにも利用できる。
* 数値型の変数なのに、代入された型が文字列 (String)型の時にint型に変更する処理などに使用できる。
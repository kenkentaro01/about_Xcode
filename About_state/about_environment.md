# @State, @ObservedObject, @EnvironmentObjectについて

Swiftでプロパティの先頭につける<b>@State、@ObservedObject、@EnvironmentObject</b>のようなものは、一般的に「プロパティラッパー（Property Wrapper）」と呼ばれます。これらはプロパティの値を保持したり、値の変更を監視したりするのに使用されます。
このディレクトリ内では、3つのプロパティラッパーについて動きを確認していきたいと思います。


## @EnvironmentObjectの挙動について
まずEnvironmentとは、「環境」といった意味になります。
@observedObjectと同様に、複数の値の状態管理を行う際に@EnvironmentObjectを定義します。
@EnvironmentObjectの特徴はアプリ全体で共通のプロパティとなります。

以下のswift文で変数の動きを確認してみます。
* @EnvironmentObjectの宣言文
  1. クラスに定義したモデルに ObservableObjectのプロトコルを準拠させる。
   <br>※クラスの参照型の性質を使っている。
  2. クラス内で監視する変数には@Publishedを付ける。
  3. 更新をかけた変数がViewで扱えるようにするためには、@EnvironmentObject 以降にObservedFugaモデルクラスのインスタンスを監視するためのプロパティを定義します。
  4. 全体でプロパティが共有されるかどうかを確認するために、新しくswiftスクリプトを準備し、3.と同様に定義します。
```swift
<!-- ObservableModel.swift -->
import SwiftUI

class ObservedFuga : ObservableObject {
    @Published var isObservEnabled : Bool = false
    @Published var value = 0.0
}


<!-- ContentView.swift -->
struct ContentView: View {

    @State private var isStateEnabled : Bool = false
    @ObservedObject var object: ObservedFuga
    @EnvironmentObject var objects: ObservedFuga

        
    var body: some View {
        VStack {
            HStack{
                Toggle(isOn: self.$objects.isObservEnabled) {
                                Text("無効")
                            }
                            Slider(value: self.$objects.value, in: 0...100)
                        }
            .padding()
            }
        }
    }
    #Preview {
    ContentView(object: ObservedFuga())
//    environmentObject定義した時に以下を書き込む必要がある
        .environmentObject(ObservedFuga())
}

<!-- EnvironmentObject.swift -->
struct EnvironmentObjects: View {
    @EnvironmentObject var environment: ObservedFuga

        var body: some View {
            Text("value is \(self.environment.value)")
        }
    }


#Preview {
    EnvironmentObjects()
        .environmentObject(ObservedFuga())
}
```
上記で記述したコーディングは以下のようなViewになっています。

<b>[結果] </b>
以下の動画より、別々のViewで定義したプロパティが共有されていることが確認できます。
![@environment](img/about_environment_img1.png)

![デモGIF](move/about_environment_move.gif)


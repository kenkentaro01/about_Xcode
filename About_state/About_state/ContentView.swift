//
//  ContentView.swift
//  About_state
//
//  Created by 健太郎 on 2024/05/20.
//

import SwiftUI

struct ContentView: View {

    @State private var isStateEnabled : Bool = false
    @ObservedObject var object: ObservedFuga
    @EnvironmentObject var objects: ObservedFuga

        
    var body: some View {
        VStack {
            HStack{
                Text(isStateEnabled ? "有効" : "無効")
                    .padding()
                Toggle("", isOn: $isStateEnabled)
                    .padding()
                //            onchangeモディファイアのofの引数には監視対象となるプロパティを記入する
                    .onChange(of: isStateEnabled){
                        print("isStateEnabledの状態:\(isStateEnabled)")
//                        Outside().testAccess()
                    }
            }
            HStack{
                Text(isStateEnabled ? "有効" : "無効")
                    .padding()
                Toggle("", isOn: self.$object.isObservEnabled)
                    .padding()
                //            onchangeモディファイアのofの引数には監視対象となるプロパティを記入する
                    .onChange(of: object.isObservEnabled){
                        print("isStateEnabledの状態:\(object.isObservEnabled)")

                    }
                Slider(value: $object.value, in: 0...100)
//                トグルボタンを押してisObservEnabledがTrueになった時に画面値が表示される
                if (self.object.isObservEnabled ){
                                Text("Value is \(self.object.value)")
                            }
            }
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

//struct Outside {
//    func testAccess(_ view: ContentView) { // ＊＊＊＊＊修正
//        print(view.isStateEnabled)
//    }
//}

#Preview {
    ContentView(object: ObservedFuga())
//    environmentObject定義した時に以下を書き込む必要がある
        .environmentObject(ObservedFuga())
}



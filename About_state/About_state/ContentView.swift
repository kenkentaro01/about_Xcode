//
//  ContentView.swift
//  About_state
//
//  Created by 健太郎 on 2024/05/20.
//

import SwiftUI

struct ContentView: View {

    @State var isStateEnabled : Bool = false

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
                    }
            }
        }
    }
}

struct Outside {
    func print(_: ContentView.isStateEnabled)
//    func testAccess() {
//        let view = ContentView()
//        // エラー: 'isStateEnabled'にアクセスできません
//        print(view.isStateEnabled)
//    }

}

#Preview {
    ContentView()
}

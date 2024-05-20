//
//  ContentView.swift
//  DataRenkei
//
//  Created by 健太郎 on 2024/05/17.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        HStack {
            ForEach(userData.names) { name in
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.gray.opacity(0.5))
                    .overlay(
                        Text(String("a"))
                            .font(.title)
                            .foregroundColor(.black)
                            .bold()
                    )
            }
        }
    }
}
//#Preview {
//    ContentView()
//}

// プレビューの設定
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())  //プレビューに環境オブジェクトを設定
    }
}

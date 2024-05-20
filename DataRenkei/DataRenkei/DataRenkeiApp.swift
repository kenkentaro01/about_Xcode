//
//  DataRenkeiApp.swift
//  DataRenkei
//
//  Created by 健太郎 on 2024/05/17.
//

import SwiftUI

//@main
//struct DataRenkeiApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

@main
struct DataRenkeiApp: App {
    var userData = UserData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userData)  // 環境オブジェクトを注入
        }
    }
}

//
//  MainView.swift
//  About_state
//
//  Created by 健太郎 on 2024/05/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            ContentView(object: ObservedFuga())
            EnvironmentObjects()
        }
        .environmentObject(ObservedFuga()) // この行でEnvironmentObjectを設定している
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

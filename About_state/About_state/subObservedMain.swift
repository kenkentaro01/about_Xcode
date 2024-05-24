//
//  subObservedMain.swift
//  About_state
//
//  Created by 健太郎 on 2024/05/24.
//

import SwiftUI

struct subObservedMain: View {
    @ObservedObject var object: ObservedFuga
    var body: some View {
        VStack {
            ContentView(object: ObservedFuga())
            subObservedObject(object: ObservedFuga())
        }
    }
}

#Preview {
    subObservedMain(object: ObservedFuga)
}

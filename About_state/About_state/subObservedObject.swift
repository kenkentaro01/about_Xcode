//
//  subObservedObject.swift
//  About_state
//
//  Created by 健太郎 on 2024/05/24.
//

import SwiftUI

struct subObservedObject: View {
    @ObservedObject var object: ObservedFuga

            var body: some View {
                Text("value is \(self.object.value)")
            }
    }

#Preview {
    subObservedObject(object: ObservedFuga())
}

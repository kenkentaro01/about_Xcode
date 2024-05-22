//
//  EnvironmentObject.swift
//  About_state
//
//  Created by 健太郎 on 2024/05/22.
//

import SwiftUI

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

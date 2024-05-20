//
//  ObservableModel.swift
//  About_state
//
//  Created by 健太郎 on 2024/05/20.
//

import SwiftUI

class ObservedFuga : ObservableObject {
    @Published var isObservEnabled : Bool = false
    @Published var value = 0.0
}

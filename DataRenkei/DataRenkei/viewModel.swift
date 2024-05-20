//
//  viewModel.swift
//  DataRenkei
//
//  Created by 健太郎 on 2024/05/19.
//

import Foundation

struct UserName: Identifiable {
    var id = UUID()  // 一意の識別子
    var name: String
}

class UserData: ObservableObject {
    @Published var names: [UserName] = [
        UserName(name: "John"),
        UserName(name: "乾裕太"),
        UserName(name: "永田健太郎")
    ]
}

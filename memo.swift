import Foundation
// 新しい UUID の生成と出力
let uuid = UUID()
let uniqueIdString = uuid.uuidString
print(uuid)
print(type(of: uuid))
print(uniqueIdString)
print(type(of: uniqueIdString))


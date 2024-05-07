// for i in (0...5){
//   // print("i:\(i)")
//   // print(type(of: i))
// }

// // reservedメソッドにより逆になる
// for i in (0...5).reversed(){
//   // print("i:\(i)")
//   // print(type(of: i))
// }

// enumeratedメソッドにより
let fruits: [String] = ["apple", "orange", "melon", "banana"]
for (value) in fruits.enumerated() {
    // print(index)
    print("\(value)") 
}

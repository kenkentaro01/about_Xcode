class Person {
    var name: String
    
    init(name: String) {
        self.name = name  // selfを使うことで、ローカル変数のnameとプロパティのnameを区別
    }
}

let nagata = Person(name: "永田")
print(nagata.name)
let helloStr : String? = ""
var emptyStr : String = "だ"

func guardTest () {
   
   // 1:guard
   guard emptyStr == "" else {
       //条件式がfalseの時にこちらの処理が呼び出され、スコープ外に出るようにreturnなど行う必要がある
       return print("処理されました")
   }
}

func guardletTest () {
     // 2:guard let
   guard var guardStr = helloStr else {
       // helloStrがnilの時にこちらの処理が実行される。
       return print("helloStrはnillが入っています")
   }


   print(guardStr)
   guardStr = "String"

}

// guardTest()
guardletTest()
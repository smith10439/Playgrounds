import UIKit

func logger(prefix: String) -> (String) -> Void {
    func log(value: String) {
        print(prefix + " " + value)
    }
    return log
}

let log = logger(prefix: "MyClass")
log("before")
//do something
log("after")


let tup = (1, 4, 87)

let (x, _, _) = tup
print(x)
let (a, b, c) = tup
print(a)
print(b)
print(c)

typealias MyString = String

protocol Random {
    static var random: String {get}
}

extension MyString: Random {
    static var random: String = "Just a String, nothing to see here."
}

let name: MyString = "Sam"
print(name)
print(MyString.random)
print(String.random)

typealias Block<U> = () -> U


var test: Block =  { () -> String in
    print("Block.")
    return "Hi"
}

let res = test()
print(res)


let person = "Sam"

class Leaker {
    var ref: Leaker?
    var data: Int
    var somethingMore: String
    init(ref: Leaker) {
        self.somethingMore = "eeeetuettuuasnteohuasotehuasoentuhasoeitaesnutibesruiha cuhao snetuh asr,.cp haotnehu aosenuhd arl.dsntoeduaoseuthaoesunthaorcida isntoedhucar,.shusntoehu aosenhu hasorceuhasnoteuh sacr,.pids nteudi snaoteuh s,.cru soeunth aoestuh asoentuh sanotehu sanotehusnatoeh usacr.disntoineistnoa udeito ioeuaostneuh aoeu e"
        self.ref = ref
        self.data = 256
    }
    init() {
        self.somethingMore = "eeeetuettuuasnteohuasotehuasoentuhasoeitaesnutibesruiha cuhao snetuh asr,.cp haotnehu aosenuhd arl.dsntoeduaoseuthaoesunthaorcida isntoedhucar,.shusntoehu aosenhu hasorceuhasnoteuh sacr,.pids nteudi snaoteuh s,.cru soeunth aoestuh asoentuh sanotehu sanotehusnatoeh usacr.disntoineistnoa udeito ioeuaostneuh aoeu e"
        self.data = 256
        self.ref = self
    }
}
/* Memory leak bug, will crash machine
for _ in 1...5000000 {
    var one = Leaker()
    var two = Leaker(ref: one)
    one.ref = two
}*/

var myString = "Test"
var yourString = myString
yourString = yourString + " Results"

print(myString)
print(yourString)

import UIKit

enum Computers {
    case dell(quality: Int)
    case apple(quality: Int)
}

var mine = Computers.apple
mine(10)

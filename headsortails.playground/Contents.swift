import UIKit

func tossCoin() -> String {
    print("Tossing a Coin!")
    let flippedHeads = Bool.random()
    if flippedHeads {
        print("Heads!")
        return "Heads!"
    } else {
        print("Tails!")
        return "Tails!"
    }
}
tossCoin()

import UIKit

let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
var deckOfCards = [String: [Int]]()
for i in suits {
    deckOfCards.updateValue(cards, forKey: i)
}
print(deckOfCards)

struct Card {
    var color: String
    var roll: Int
    
    init (color: String){
        self.color = color
        self.roll = 0
        self.roll = self.rollPicker()
    }
    
    mutating func rollPicker() -> Int{
        if self.color == "blue"{
            return Int.random(in: 1 ..< 3)
        }
        if self.color == "red"{
            return Int.random(in: 3 ..< 5)
        }
        if self.color == "green"{
            return Int.random(in: 4 ..< 7)
        }
        else {
            return Int.random(in: 1 ..< 7)
        }
    }
    
}

class Deck {
    var cards: [Card]
    
    init () {
        self.cards = []
        for _ in 1...10 {
            cards.append(Card(color: "blue"))
            cards.append(Card(color: "red"))
            cards.append(Card(color: "green"))
        }
    }
    
    func deal() -> Card {
        return self.cards.removeLast()
    }
    
    func isEmpty() ->  Bool {
        return self.cards.count == 0
    }
    
    func reorder() -> Void {
        self.cards.shuffle()
    }
}

class Player {
    var name: String
    var hand: [Card]
    
    init (name: String) {
        self.name = name
        self.hand = []
    }
    
    func draw(deck: Deck) -> Card {
        let t = deck.deal()
        self.hand.append(t)
        return t
    }
    
    func rollDice() -> Int {
        return Int.random(in: 1 ..< 7)
    }
    
    func matchingCards(color: String, roll: Int) -> Int {
        var count = 0
        for card in self.hand {
            if card.color == color && card.roll == roll {
                count += 1
            }
        }
        return count
    }
}

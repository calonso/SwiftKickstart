enum SizeOfCup: Int {
    case Small = 8
    case Medium = 12
    case Large = 16
}

struct Beverage {
    var amount: Int {
        didSet {
            if isEmpty {
            println("The drink is now empty")
            } else {
                println("The drink has \(amount) left")
            }
        }
    }
    var isEmpty: Bool {
        return amount <= 0
    }
    init (sizeOfCup: SizeOfCup ) {
        self.amount = sizeOfCup.rawValue
    }
    mutating func drink(deltaAmount: Int){
        amount -= deltaAmount
    }
}

struct HotBeverage {
    var beverage: Beverage
    init(sizeOfCup: SizeOfCup) {
        beverage = Beverage(sizeOfCup: sizeOfCup)
    }
    mutating func sip() {
        beverage.drink(1)
    }
}

var coffee = HotBeverage(sizeOfCup: .Medium)
for i in 1...12 {
    coffee.sip()
}

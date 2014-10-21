class Beverage {
    var amount: Int
    var isEmpty: Bool {
        return amount <= 0
    }
    init (amount: Int) {
        self.amount = amount
    }
}

enum SizeOfCup: Int {
    case Small = 8
    case Medium = 12
    case Large = 16
}

class HotBeverage: Beverage {
    func sip() {
        amount--
        if isEmpty {
            println("You're done")
        }
    }
    init(sizeOfCup: SizeOfCup) {
        super.init(amount: sizeOfCup.rawValue)
    }
}

let coffee = HotBeverage(sizeOfCup: .Medium)
for i in 1...8 {
    coffee.sip()
}

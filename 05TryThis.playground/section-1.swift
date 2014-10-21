class Beverage {
    var amount: Int
    var isEmpty: Bool {
        return amount <= 0
    }
    init (amount: Int) {
        self.amount = amount
    }
}

class HotBeverage: Beverage {
    func sip() {
        amount--
        if isEmpty {
            println("You're done")
        }
    }
}

let coffee = HotBeverage(amount: 8)
for i in 1...8 {
    coffee.sip()
}

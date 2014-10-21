protocol Pourable {
    func drink(amount: Int) -> Pourable
}

enum SizeOfCup: Int {
    case Small = 8
    case Medium = 12
    case Large = 16
}

struct HotBev: Pourable {
    var amountRemaining: Int
    func drink(amount: Int) -> Pourable {
        if amountRemaining > amount {
            return HotBev(amountRemaining: amountRemaining - amount)
        } else {
            return self
        }
    }
    func sip() -> Pourable {
        return drink(1)
    }
}
struct ColdBev: Pourable {
    var amountRemaining: Int
    func drink(amount: Int) -> Pourable {
        if amountRemaining > amount {
            return ColdBev(amountRemaining: amountRemaining - amount)
        } else {
            return self
        }
    }
    func gulp() -> Pourable {
        return drink(4)
    }
}


var coffee = HotBev(amountRemaining: SizeOfCup.Medium.toRaw())
for i in 1...8 {
    coffee.sip()
}
var iceTea = ColdBev(amountRemaining: SizeOfCup.Large.toRaw())
for i in 1...8 {
    iceTea.gulp()
}

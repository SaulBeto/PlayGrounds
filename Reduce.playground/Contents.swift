import UIKit


var prices = [["10", "30"],["10", "40"],["100", "600"]]

let pricesReduce = prices.reduce([]) { $0 + $1}

print(pricesReduce)

let firstFound = prices.first(where: { $0.contains("10") &&  $0.contains("40")  })

print(firstFound)

let filter = prices.filter {
    !( $0.contains("10") && $0.contains("40"))
}
print(filter)

prices.suffix(2)
prices.removeLast(2)





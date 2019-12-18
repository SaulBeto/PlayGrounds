//: Playground - noun: a place where people can play

import UIKit

let auth = (name:"Saul", password: "yuca")

switch auth {
    case ("Saul", let password): print("Saul has this \(password)")
    case ("Leo", "birthday"): print("Auth no validated")
    
default:
    print("Wasa")
}



let authentication = (name: "twostraws", password: "fr0st1es",
                      ipAddress: "127.0.0.1")

switch authentication {
case ("bilbo", "bagg1n5", _):
    print("Hello, Bilbo Baggins!")
case ("twostraws", "fr0st1es", _):
    print("Hello, Paul Hudson!")
default:
    print("Who are you?")
}



func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    case (false, false):
        return String(number)
    }
}

print(fizzbuzz(number: 15))


let twostraws = (name: "twostraws", password: "fr0st1es")
let bilbo = (name: "bilbo", password: "bagg1n5")
let taylor = (name: "taylor", password: "fr0st1es")

let users = [twostraws, bilbo, taylor]

for case (let name, let password) in users {
    print("User \(name) has the password \(password)")
}


for case let (name, password) in users {
    print("User \(name) has the password \(password)")
}

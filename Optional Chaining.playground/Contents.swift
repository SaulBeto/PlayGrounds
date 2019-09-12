//: Playground - noun: a place where people can play

import UIKit

// Optionals
// Checan si existe valor o no.
// Tipo que puede o no contener un valor.
// Un valor opcional contiene un valor o contiene nil
//if you force unwrap an optional that doesn't have a value, your code will crash.

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}
func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}
if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}

//


func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }
    return nil }

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year)")
}

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}
//Optional chaining
//lets you run code only if your optional has a value
//
let album = albumReleased(year: 2000)?.uppercased()
print("The album is \(album)")

//nil Coalescing operator
//guaranteed to have real data to work
let album2 = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album2)")

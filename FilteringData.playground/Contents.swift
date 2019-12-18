//: Playground - noun: a place where people can play

import UIKit


var allWords = [String]()
private(set) var filteredWords = [String]()
var wordCounts: NSCountedSet!


func applyUserFilter(_ input: String) {
    if let userNumber = Int(input) {
        applyFilter { self.wordCounts.count(for: $0) >= userNumber }
    } else {
        applyFilter { $0.range(of: input, options: .caseInsensitive) != nil }
    }
}

func applyFilter(_ filter: (String) -> Bool) {
    filteredWords = allWords.filter(filter)
}


allWords = ["Hola","Swift","wasaSwift","Swifty","Devorame","Oraoraoraaa","","Wasa","Ana","Swift","Ana","Ana"]
allWords = allWords.filter { $0 != "" }//limpia espacios en blanco

wordCounts = NSCountedSet(array: allWords)
let sorted = wordCounts.allObjects.sorted { wordCounts.count(for: $0) > wordCounts.count(for: $1) }
allWords = sorted as! [String]

applyUserFilter("swift")

//self.playData.applyUserFilter(userInput)


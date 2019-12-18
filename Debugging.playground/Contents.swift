import UIKit

var isDebug = true



if (isDebug){
    print("I´m Debugging")
    print(1, 2, 3, 4, 5, separator: "-")
    print("Some message", terminator: "")
    print("Next message")
}else{
    print("I´m not Debugging")
}


//assert(1 == 2, "Failure!")
print("End of debugging")

import Cocoa
import Foundation

enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}


enum PaymentType {
    case invoice
    case creditcard
    case cash
}


//struct PaymentStatus {
//    let paymentDate: Date?
//    let isReccuring: Bool
//    let paymentType: PaymentType
//}


enum PaymentStatus {
    case invoice(paymentDate: Date?, isReccuring: Bool)
    case creditcard(paymentDate: Date?, isReccuring: Bool)
    case cadh(paymentDate: Date?, isReccuring: Bool)
}


enum Topping {
    case creameCheese
    case peanutButter
    case jam
}


enum BagelType {
    case cinnamonRaisin
    case gluteFree
    case oatMeal
    case blueberry
}


//struct Bagel {
//    let topping: Topping
//    let type: BagelType
//}

enum Bagel {
    case creameCheese
    case peanutButter
    case jam
    case cinnamonRaisin
    case gluteFree
    case oatMeal
    case blueberry
}


enum AgeRange {
    case baby
    case toddler
    case preschooler
    case gradeschooler
    case teenager
}


struct Puzzle {
    let numberOfPieces: Int
    let ageRange: AgeRange
}

//enum Puzzle {
//    case baby(numberOfPieces: Int)
//    case toddler(numberOfPieces: Int)
//    case preschooler(numberOfPieces: Int)
//    case gradeschooler(numberOfPieces: Int)
//    case teenager(numberOfPieces: Int)
//}

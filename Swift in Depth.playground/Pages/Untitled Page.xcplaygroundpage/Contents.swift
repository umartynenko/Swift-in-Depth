import Cocoa
import Foundation


let arr: [Any] = [Date(), "Why was six afraid of seven?", "Because...", 789]

for element: Any in arr {
    switch element {
        case let stringValue as String: "received a string: \(stringValue)"
        case let intValue as Int: "received an Int: \(intValue)"
        case let dateValue as Date: "received a date: \(dateValue)"
        default: print("I am not interested in this value")
    }
}


enum DateType {
    case singleDate(Date)
    case dateRange(Range<Date>)
}


let now = Date()
let hourFromNow = Date(timeIntervalSinceNow: 360)
let dates: [DateType] = [DateType.singleDate(now), DateType.dateRange(now..<hourFromNow)]

for dateType in dates {
    switch dateType {
        case .singleDate(let date): print("Date is \(date)")
        case .dateRange(let range): print("Range is \(range)")
    }
}

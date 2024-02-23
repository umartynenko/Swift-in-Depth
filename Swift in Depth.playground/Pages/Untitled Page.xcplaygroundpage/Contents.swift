import Cocoa
import Foundation

enum Currency: String {
    case euro = "eur"
    case usd
    case gbp
}

print(Currency.euro.rawValue)

let  currency = Currency.euro

print(currency.rawValue)

let parameters: [String: String]


switch currency {
    case .euro: parameters = ["filter": "euro"]
    case .usd: parameters = ["filter": "usd"]
    case .gbp: parameters = ["filter": "gbp"]
}


print(parameters)


import Cocoa
import Foundation


enum Message {
    case text(userID: String, contents: String, date: Date)
    case draft(userID: String, date: Date)
    case join(userID: String, date: Date)
    case leave(userID: String, date: Date)
    case balloon(userID: String, date: Date)
}


let textMessage = Message.text(userID: "2", contents: "Bonjour!", date: Date())
let joinMessage = Message.join(userID: "2", date: Date())

logMessage(message: joinMessage)
logMessage(message: textMessage)


func logMessage(message: Message) {
    switch message {
        
        case .text(userID: let userID, contents: let contents, date: let date):
            print("[\(date) User \(userID) send message: \(contents)")
        case .draft(userID: let userID, date: let date):
            print("[\(date) User \(userID) is drafting a message")
        case let .join(userID: userID, date: date):
            print("[\(date) User \(userID) has joined the chatroom")
        case .leave(userID: let userID, date: let date):
            print("[\(date) User \(userID) has left the chatroom")
        case .balloon(userID: let userID, date: let date):
            print("[\(date) User \(userID) is sending balloons")
    }
}

if case let Message.text(userID: id, contents: contents, date: date) = textMessage {
    print("Received: \(contents)")
}

if case let Message.text(_, contents: contents, _) = textMessage {
    print("Received: \(contents)")
}

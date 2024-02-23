import Cocoa
import Foundation


struct Message {
    let userID: String
    let contents: String?
    let date: Date
    let hasJoined: Bool
    let hasLeft: Bool
    let isBeingDrafted: Bool
    let isSendingBalloons: Bool
}


let joinMessage = Message(
    userID: "1",
    contents: nil,
    date: Date(),
    hasJoined: true, // Устанавливает значения логического типа данных
    hasLeft: false,
    isBeingDrafted: false,
    isSendingBalloons: false
)
let textMessage = Message(
    userID: "2",
    contents: "Hey everyone!",  //передаем сообщение
    date: Date(),
    hasJoined: false,
    hasLeft: false,
    isBeingDrafted: false,
    isSendingBalloons: false
)
let brokenMessage = Message(
    userID: "1",
    contents: "Hi there",   //Текст для показа
    date: Date(),
    hasJoined: true,
    hasLeft: true,
    isBeingDrafted: false,
    isSendingBalloons: false
)


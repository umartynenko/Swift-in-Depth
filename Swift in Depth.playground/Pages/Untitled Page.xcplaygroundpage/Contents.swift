import Cocoa
import Foundation


struct Run {
//    let id: String
    let startTime: Date
    let endTime: Date
    let distance: Float
    let onRunningTrack: Bool
}


struct Cycle {
    enum CycleType {
        case regular
        case mountainBike
        case racetrack
    }
    
    let id: String
    let startTime: Date
    let endTime: Date
    let distance: Float
    let incline: Int
    let type: CycleType
}


struct Pushups {
    let repetitions: [Int]
    let date: Date
}

struct Abs {
    let a: [Int]
    let date: Date
}


enum Workout {
    case run(Run)
    case cycle(Cycle)
    case pushups(Pushups)
    case abs(Abs)
}


switch workout {
    case .run(let run): 
        print("Run: \(run)")
    case .cycle(let cycle):
        print("Cycle: \(cycle)")
    case .pushups(let pushups):
        print("Pushups \(pushups)")
    case .abs(let abs):
        print("Abs \(abs)")
}

let pushups = Pushups(repetitions: [22,20,10], date: Date())
let workout = Workout.pushups(pushups)


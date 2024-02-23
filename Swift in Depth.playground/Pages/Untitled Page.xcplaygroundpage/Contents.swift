import Cocoa
import Foundation


struct Run {
    let id: String
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

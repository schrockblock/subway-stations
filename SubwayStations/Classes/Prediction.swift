//
//  Prediction.swift
//  Pods
//
//  Created by Elliot Schrock on 6/28/16.
//
//

import UIKit

public enum Direction: Int {
    case uptown = 0
    case downtown = 1
}

open class Prediction {
    open var secondsToArrival: Int? {
        if let arrival = timeOfArrival {
            return Int(arrival.timeIntervalSinceNow)
        }else{
            return nil
        }
    }
    open var timeOfArrival: Date?
    open var direction: Direction?
    open var route: Route?
    
    public init(time: Date?) {
        timeOfArrival = time
    }
}

public func ==(lhs: Prediction, rhs: Prediction) -> Bool {
    return lhs.route?.objectId == rhs.route?.objectId && lhs.timeOfArrival == rhs.timeOfArrival && lhs.direction == rhs.direction
}

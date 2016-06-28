//
//  Prediction.swift
//  Pods
//
//  Created by Elliot Schrock on 6/28/16.
//
//

import UIKit

public enum Direction: Int {
    case Uptown = 0
    case Downtown = 1
}

public class Prediction {
    public var secondsToArrival: Int? {
        if let arrival = timeOfArrival {
            return Int(arrival.timeIntervalSinceNow)
        }else{
            return nil
        }
    }
    public var timeOfArrival: NSDate?
    public var direction: Direction?
    public var route: Route?
    
    public init(time: NSDate?) {
        timeOfArrival = time
    }
}

public func ==(lhs: Prediction, rhs: Prediction) -> Bool {
    return lhs.route?.objectId == rhs.route?.objectId && lhs.timeOfArrival == rhs.timeOfArrival && lhs.direction == rhs.direction
}

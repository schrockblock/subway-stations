//
//  StopTime.swift
//  SubwayStations
//
//  Created by Elliot Schrock on 1/30/19.
//

import UIKit

public protocol StopTime {
    var stopId: String! { get set }
    var tripId: String! { get set }
    var departureTime: String! { get set }
    var stopSequence: Int64! { get set }
}

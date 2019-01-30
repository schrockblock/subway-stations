//
//  Trip.swift
//  SubwayStations
//
//  Created by Elliot Schrock on 1/30/19.
//

import UIKit

public protocol Trip {
    var objectId: String! { get set }
    var routeId: String! { get set }
}

//
//  StationManager.swift
//  Pods
//
//  Created by Elliot Schrock on 6/28/16.
//
//

import UIKit

public protocol StationManager {
    var allStations: Array<Station> { get set }
    var routes: Array<Route> { get set }
    var timeLimitForPredictions: Int32 { get set }
    
    func stationsForSearchString(stationName: String!) -> Array<Station>?
    func predictions(station: Station!, time: NSDate!) -> Array<Prediction>
    func routeIdsForStation(station: Station) -> Array<String>
}

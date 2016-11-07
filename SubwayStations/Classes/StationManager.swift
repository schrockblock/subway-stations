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
    
    func stationsForSearchString(_ stationName: String!) -> Array<Station>?
    func predictions(_ station: Station!, time: Date!) -> Array<Prediction>
    func routeIdsForStation(_ station: Station) -> Array<String>
}

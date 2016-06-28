//
//  RouteColorManager.swift
//  Pods
//
//  Created by Elliot Schrock on 6/28/16.
//
//

import UIKit

public protocol RouteColorManager {
    func colorForRouteId(routeId: String!) -> UIColor
}

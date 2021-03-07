//
//  Stop.swift
//  Pods
//
//  Created by Elliot Schrock on 6/28/16.
//
//

import UIKit

public protocol Stop {
    var name: String! { get set }
    var objectId: String! { get set }
    var parentId: String! { get set }
    var station: Station! { get set }
    var latitude: Double? { get set }
    var longitude: Double? { get set }
}

extension Stop {
    public func location() -> (Double, Double)? {
        guard let lat = latitude, let lon = longitude else { return nil }
        return (lat, lon)
    }
}

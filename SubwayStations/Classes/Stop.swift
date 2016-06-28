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
}

//
//  Station.swift
//  Pods
//
//  Created by Elliot Schrock on 6/28/16.
//
//

import UIKit

public protocol Station {
    var name: String! { get set }
    var stops: Array<Stop> { get set }
}

public func ==(lhs: Station, rhs: Station) -> Bool {
    if let lhsName = lhs.name {
        if let rhsName = rhs.name {
            if lhsName.lowercaseString == rhsName.lowercaseString {
                return true
            }
            
            let lhsArray = lhsName.lowercaseString.componentsSeparatedByString(" ")
            let rhsArray = rhsName.lowercaseString.componentsSeparatedByString(" ")
            
            if lhsArray.count == rhsArray.count {
                for lhsComponent in lhsArray {
                    if !rhsArray.contains(lhsComponent){
                        return false
                    }
                }
                
                for rhsComponent in rhsArray {
                    if !lhsArray.contains(rhsComponent) {
                        return false
                    }
                }
            }else{
                return false
            }
            
            return true;
        }else{
            return false
        }
    }else{
        return false
    }
}

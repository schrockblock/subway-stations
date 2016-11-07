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
            if lhsName.lowercased() == rhsName.lowercased() {
                return true
            }
            
            let lhsArray = lhsName.lowercased().components(separatedBy: " ")
            let rhsArray = rhsName.lowercased().components(separatedBy: " ")
            
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

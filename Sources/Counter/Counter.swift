//
//  Counter.swift
//  Pylike
//
//  Created by Winston Purnomo on 6/16/22.
//

import Foundation

public struct Counter<T: Hashable>: CustomStringConvertible {
    public var description: String {
        return dict.description
    }
    
    public var dict: [T: Int] = [:]
    
    public init(_ val: String) where T == String {
        for char in val {
            self.dict[String(char), default: 0] += 1
        }
    }
    
    public init(_ val: Array<T>) {
        for elem in val {
            self.dict[elem, default: 0] += 1
        }
    }
    
    public func elements() -> [T] {
        return Array(dict.keys)
    }
    
    public mutating func clear() {
        dict = [:]
    }
}

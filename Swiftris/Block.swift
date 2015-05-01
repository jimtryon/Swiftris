//
//  Block.swift
//  Swiftris
//
//  Created by Jim Tryon on 5/1/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

import SpriteKit

// #1
// supports six different colors
let NumberOfColors: UInt32 = 6

// #2
// protocol that is capable of generating human-readable strings
// for debugging or outuput

enum BlockColor: Int, Printable {
    
    // #3
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    
    // #4
    // computed property, acts like a variable, but when accessing it,
    // a code block is invoked to generate its value
    var spriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "teal"
        case .Yellow:
            return "yellow"
        }
    }
    
    // #5
    // required by the Printable protocol
    var description: String {
        return self.spriteName
    }
    
    // #6
    static func random() -> BlockColor {
        return BlockColor(rawValue:Int(arc4random_uniform(NumberOfColors)))!
    }
}

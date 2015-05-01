//
//  GameScene.swift
//  Swiftris
//
//  Created by Jim Tryon on 5/1/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

import SpriteKit

// #1
let TickLengthLevelOne = NSTimeInterval(600)

// #2
// closure that performs a function
// takes no parameters and returns nothing

var tick:(() -> ())?
var tickLengthMillis = TickLengthLevelOne
var lastTick:NSDate?


class GameScene: SKScene {
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        // create start point in top-left corner
        anchorPoint = CGPoint(x: 0, y: 1.0)
        
        // let is equivalent to final in Java, cannot be reassigned
        let background = SKSpriteNode(imageNamed: "background")
        
        // set background image
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 1.0)
        
        // add background to scene
        addChild(background)
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        // #3
        if lastTick == nil {
            return
        }
        // functions on objects are invoked using dot method
        // ! is required if object is optional type, to access 
        // the object, we have to dereference the optional
        var timePassed = lastTick!.timeIntervalSinceNow * -1000.0
        if timePassed > tickLengthMillis {
            lastTick = NSDate()
            // asking Swift to check if tick exists, and if it does invoke
            // with no parameters
            // if (tick != nil)
            tick?()
        }
    }
    
    // #4
    func startTicking() {
        lastTick = NSDate()
    }
    
    func stopTicking() {
        lastTick = nil
    }
}

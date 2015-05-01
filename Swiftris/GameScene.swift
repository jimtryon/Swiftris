//
//  GameScene.swift
//  Swiftris
//
//  Created by Jim Tryon on 5/1/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

import SpriteKit

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
    }
}

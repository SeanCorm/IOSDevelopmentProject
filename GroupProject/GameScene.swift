//
//  GameScene.swift
//  GroupProject
//
//  Created by Sean Cormier on 2017-06-05.
//  Copyright © 2017 Sean Cormier. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    
    override func didMove(to view: SKView) {
        
        
        //used for make connections and alterations to the dragon (player)
        let MyDragon:SKSpriteNode = self.childNode(withName: "Dragon") as! SKSpriteNode
        MyDragon.xScale = 1.0
        MyDragon.yScale = 1.0
        
        //let Player:SKSpriteNode  = SKSpriteNode(imageNamed: "Dragon")
        //Player.position = CGPoint(x: 100, y: 100)
        //self.addChild(Player)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

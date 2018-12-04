//
//  GameScene.swift
//  Pong
//
//  Created by BOUNAIX Vincent on 03/12/2018.
//  Copyright © 2018 BOUNAIX Vincent. All rights reserved.
//

import SpriteKit
import GameplayKit

public class GameScene: SKScene {
    
    var ball = SKSpriteNode()
    var player2 = SKSpriteNode()
    var player = SKSpriteNode()
    var playerScore = SKLabelNode()
    var player2Score = SKLabelNode()
    
    var score : [String: Int] = [
        "player1": 0,
        "player2": 0
    ]
    
    func resetBall() {
        ball.position.x = 0
        ball.position.y = 0
    }
    
    
    override public func didMove(to view: SKView) {
    
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        
        border.friction = 0
        border.restitution = 1
        
        self.physicsBody = border
        
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        player2 = self.childNode(withName: "player2") as! SKSpriteNode
        player = self.childNode(withName: "player") as! SKSpriteNode
        playerScore = self.childNode(withName: "playerScore") as! SKLabelNode
        player2Score = self.childNode(withName: "player2Score") as! SKLabelNode
        
        
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            /*player.run(SKAction.moveTo(x: location.x, duration: 0))*/
        }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
           /* player.run(SKAction.moveTo(x: location.x, duration: 0))*/
        }
    }
    

}

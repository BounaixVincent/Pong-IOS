//
//  GameScene.swift
//  Pong
//
//  Created by BOUNAIX Vincent on 03/12/2018.
//  Copyright © 2018 BOUNAIX Vincent. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
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
    
    
    override func didMove(to view: SKView) {
    
        
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            player.run(SKAction.moveTo(x: location.x, duration: 0))
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            player.run(SKAction.moveTo(x: location.x, duration: 0))
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        player2.run(SKAction.moveTo(x: ball.position.x, duration: 0.5))
        
        
        if ball.position.y >= self.frame.size.height/2 - ball.size.height{
            score["player"] = (score["player"] ?? 0) + 1
            playerScore.text = String(describing: score["player"] ?? 0)
            resetBall()

        }
        if ball.position.y <= self.frame.size.height/2 * -1 + ball.size.height {
            score["player2"] = (score["player2"] ?? 0) + 1
            player2Score.text = String(describing: score["player2"] ?? 0)
            resetBall()
        }
    }
}

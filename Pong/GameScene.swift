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
    var rotateAction = SKAction.rotate(byAngle: 10, duration: 1)
    var score : [String: Int] = [
        "player": 0,
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
        
        ball.run(SKAction.repeatForever(rotateAction))
        
        
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /*for touch in touches {
         let location = touch.location(in: self)
         
         player.run(SKAction.moveTo(x: location.x, duration: 0))
         }*/
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        /*for touch in touches {
         let location = touch.location(in: self)
         
         player.run(SKAction.moveTo(x: location.x, duration: 0))
         }*/
    }
    
    override public func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        
        
        if ball.position.y >= self.frame.size.height/2 - ball.size.height{
            onWon(player: "player")
            let currentScore:[String: Int] = UserDefaults.standard.dictionary(forKey: "score") as! [String : Int]
            var globalScore = UserDefaults.standard.integer(forKey: "globalScore")
            if globalScore <= currentScore["player"] ?? 0 {
                print("new global score")
                UserDefaults.standard.set(currentScore["player"], forKey: "score")
                globalScore = currentScore["player"] ?? 0
                print(globalScore)
            }
            UserDefaults.standard.set(score, forKey: "score")
            playerScore.text = String(describing: score["player"] ?? 0)
            
        }
        if ball.position.y <= self.frame.size.height/2 * -1 + ball.size.height {
            onWon(player: "player2")
            player2Score.text = String(describing: score["player2"] ?? 0)
            
        }
    }
    
    private func onWon(player: String) {
        score[player] = (score[player] ?? 0) + 1
        
        
        resetBall()
        ball.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 20))
    }
    
    
}


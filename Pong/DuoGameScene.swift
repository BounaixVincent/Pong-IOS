
import SpriteKit
import UIKit

class DuoGameScene: GameScene {
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        for touch in touches {
            let location = touch.location(in: self)
            let location2 = touch.location(in: self)
            
            
            if location2.y > 0 {
                player2.run(SKAction.moveTo(x: location2.x, duration: 0))
            }
            
            else if location.y < 0 {
                player.run(SKAction.moveTo(x: location.x, duration: 0))
            }
        }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        for touch in touches {
            let location = touch.location(in: self)
            let location2 = touch.location(in: self)
            
            
            if location2.y > 0 {
                player2.run(SKAction.moveTo(x: location2.x, duration: 0))
            }
            
            else if location.y < 0 {
                player.run(SKAction.moveTo(x: location.x, duration: 0))
            }
        }
    }
    
    override public func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        
        
        if ball.position.y >= self.frame.size.height/2 - ball.size.height{
            score["player"] = (score["player"] ?? 0) + 1
            playerScore.text = String(describing: score["player"] ?? 0)
            resetBall()
            ball.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 20))
        }
        if ball.position.y <= self.frame.size.height/2 * -1 + ball.size.height {
            score["player2"] = (score["player2"] ?? 0) + 1
            player2Score.text = String(describing: score["player2"] ?? 0)
            resetBall()
            ball.physicsBody?.applyImpulse(CGVector(dx: -20, dy: -20))
        }
    }
}



import SpriteKit
import UIKit

class SoloGameScene: GameScene {
    
    override public func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        
        player2.run(SKAction.moveTo(x: ball.position.x, duration: 0.5))
        
        
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
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        for touch in touches {
            let location = touch.location(in: self)
            
            player.run(SKAction.moveTo(x: location.x, duration: 0))
        }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        for touch in touches {
            let location = touch.location(in: self)
            
            player.run(SKAction.moveTo(x: location.x, duration: 0))
        }
    }
}


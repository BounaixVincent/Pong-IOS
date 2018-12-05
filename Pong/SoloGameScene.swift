
import SpriteKit
import UIKit

class SoloGameScene: GameScene {
    
    override public func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        player2.run(SKAction.moveTo(x: ball.position.x, duration: 0.5))

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


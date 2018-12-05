
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
}


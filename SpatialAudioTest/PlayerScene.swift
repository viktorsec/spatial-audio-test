//
//  PlayerScene.swift
//  SpatialAudioTest
//
//  Created by Viktor Sec on 14/08/2021.
//

import Foundation
import SpriteKit

class PlayerScene: SKScene {
    
    var node = SKSpriteNode()
    var nodePosition = CGPoint()
    var music = SKAudioNode(fileNamed: "jazzyfrenchy.mp3")
    
    
    override func didMove(to view: SKView) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        
        node = SKSpriteNode(color: SKColor.red, size: CGSize(width: 50, height: 50))
        node.position = location
        addChild(node)
        
        addChild(music)
        music.isPositional = true
        music.position = location
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self) {
            node.run(SKAction.move(to: location, duration: 0))
            music.position = location
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        node.removeFromParent()
        music.removeFromParent()
    }
}

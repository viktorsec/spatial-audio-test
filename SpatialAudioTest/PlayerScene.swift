//
//  PlayerScene.swift
//  SpatialAudioTest
//
//  Created by Viktor Sec on 14/08/2021.
//

import Foundation
import SpriteKit

class PlayerScene: SKScene {
    var screenWidth = UIScreen.main.bounds.size.width
    var screenHeight = UIScreen.main.bounds.size.height
    
    var node = SKShapeNode()
    var nodePosition = CGPoint()
    var music = SKAudioNode(fileNamed: "jazzyfrenchy.mp3")
    
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.init(red: 0.96, green: 0.89, blue: 0.26, alpha: 1)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        
        node = SKShapeNode(circleOfRadius: 48)
        node.lineWidth = 0
        node.fillColor = SKColor.init(red: 0.82, green: 0.26, blue: 0.96, alpha: 1)
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
            music.position = CGPoint(x: location.x - screenWidth / 2, y: location.y - screenHeight / 2)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        node.removeFromParent()
        music.removeFromParent()
    }
}

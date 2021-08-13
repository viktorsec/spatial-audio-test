//
//  ContentView.swift
//  SpatialAudioTest
//
//  Created by Viktor Sec on 14/08/2021.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var scene: SKScene {
        let scene = PlayerScene()
        scene.size = CGSize(width: 300, height: 400)
        scene.scaleMode = .fill
        
        return scene
    }
    
    var body: some View {
        SpriteView(scene: scene)
            .frame(width: 300, height: 400)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

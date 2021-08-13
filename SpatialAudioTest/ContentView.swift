//
//  ContentView.swift
//  SpatialAudioTest
//
//  Created by Viktor Sec on 14/08/2021.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var width = UIScreen.main.bounds.size.width
    var height = UIScreen.main.bounds.size.height
    
    var scene: SKScene {
        let scene = PlayerScene()
        scene.size = CGSize(width: width, height: height)
        scene.scaleMode = .fill
        
        return scene
    }
    
    var body: some View {
        SpriteView(scene: scene)
            .frame(width: width, height: height)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

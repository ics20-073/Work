//
//  ContentView.swift
//  Lab8
//
//  Created by ICS 224 on 2021-03-22.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        VStack{
            ARViewContainer().edgesIgnoringSafeArea(.all)
            Button(action: {ARViewContainer.boxAnchor.notifications.startNotification.post()}) {
                Text("pleaseworkpp")
            }
            
       
    }
}
}

struct ARViewContainer: UIViewRepresentable {
    static let boxAnchor = try! Experience.loadBiplane()
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        //let boxAnchor = try! Experience.loadBiplane()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(ARViewContainer.boxAnchor)
        
    
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

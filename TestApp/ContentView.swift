//
//  ContentView.swift
//  TestApp
//
//  Created by Adii on 6/7/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
    
        Model3D(named: "Vision_Pro"){visionPro in
            visionPro
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(0.2)
        } placeholder: {
            ProgressView()
        }
    }
        
//            Model3D(named: "Scene", bundle: realityKitContentBundle)
//                .padding(.bottom, 50)
//            
//            Model3D(named: "Vision_Pro", bundle: realityKitContentBundle)
//                .padding(.bottom,50)
//            
//            Text("Hello, world!")
//
//            Toggle("Show ImmersiveSpace", isOn: $showImmersiveSpace)
//                .font(.title)
//                .frame(width: 360)
//                .padding(24)
//                .glassBackgroundEffect()
//        }
//        .padding()
//        .onChange(of: showImmersiveSpace) { _, newValue in
//            Task {
//                if newValue {
//                    switch await openImmersiveSpace(id: "ImmersiveSpace") {
//                    case .opened:
//                        immersiveSpaceIsShown = true
//                    case .error, .userCancelled:
//                        fallthrough
//                    @unknown default:
//                        immersiveSpaceIsShown = false
//                        showImmersiveSpace = false
//                    }
//                } else if immersiveSpaceIsShown {
//                    await dismissImmersiveSpace()
//                    immersiveSpaceIsShown = false
//                }
//            }
//        }
    }

#Preview(windowStyle: .automatic) {
    ContentView()
}

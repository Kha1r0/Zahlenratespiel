//
//  ContentView.swift
//  Zahlenratespiel
//
//  Created by Dominik Kuckeburg on 01.07.23.
//

import SwiftUI

struct StartMenuView: View {
    // Size Classes for deciding how to show Menu based on Device Orientation
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    var body: some View {
        
        ScrollView {
            Group {
                if verticalSizeClass == .compact && horizontalSizeClass == .regular {
                    // HORIZONTAL LAYOUT
                    HStack {
                        // Game dice picture
                        Image("Zahlenratespiel")
                            .resizable()
                            .scaledToFit()
                        
                        VStack {
                            // Title
                            Text("Zahlenratespiel")
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(Color.red)
                                .padding()
                                // The following 2 command make the title not rip apart with big scaling.
                                .minimumScaleFactor(0.5)
                                .lineLimit(1)
                            
                            Buttons()
                            
                        }
                        .padding()
                    }
                } else {
                    // VERTICAL LAYOUT
                    VStack {
                        // Game dice picture
                        Image("Zahlenratespiel")
                            .resizable()
                            .scaledToFit()
                        
                        // Title
                        Text("Zahlenratespiel")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color.red)
                            .padding()
                            // The following 2 command make the title not rip apart with big scaling.
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                        
                        Buttons()
                            
                    }
                    .padding()
                }
            }
        }
        
    }
        
}

// The Menu buttons
struct Buttons: View {
    var body: some View {
        VStack {
            
            // Start button
            Button(action: {
                print("Starting Game...")
                // TODO
            }) {
                Image(systemName: "forward.frame.fill")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .padding()
            }
            
            // Settings Button
            Button(action: {
                print("Opening Settings Menu...")
                // TODO
            }) {
                Image(systemName: "gearshape.fill")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundColor(.gray)
                    .padding()
            }
            
            // About Me Button
            Button(action: {
                print("Forwarding to GitHub...")
                // TODO
            }) {
                VStack {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                        .imageScale(.large)
                        .foregroundColor(.gray)
                    Text("About Me")
                        .foregroundColor(.gray)
                        .font(.title)
                }
            }
        }
    }
}

struct StartMenu_Previews: PreviewProvider {
    static var previews: some View {
        StartMenuView()
    }
}

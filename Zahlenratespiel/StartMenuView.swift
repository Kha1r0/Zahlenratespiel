//
//  StartMenuView.swift
//  Zahlenratespiel
//
//  Created by Dominik Kuckeburg on 01.07.23.
//

import SwiftUI

struct StartMenuView: View 
{
    // get light/dark Mode
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View
    {
        NavigationView 
        {
            // VERTICAL LAYOUT
            VStack {
                // Game dice picture
                Image(colorScheme == .dark ? "Zahlenratespiel_d" : "Zahlenratespiel")
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
                
            }.padding() // end of vstack
        }
    }
}

struct Buttons: View {
    var body: some View {
        VStack 
        {
            // Start Button
            NavigationLink(destination: GameView()) {
                    Image(systemName: "forward.frame.fill")
                        .font(.largeTitle)
                        .imageScale(.large)
                        .foregroundColor(.red)
                        .padding()
            }
            
            // Settings Button
            NavigationLink(destination: SettingsView()) {
                Image(systemName: "gearshape.fill")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundColor(.gray)
                    .padding()
            }
            
            // About Me Button
            Link(destination: URL(string: "https://github.com/kha1r0")!, label: {
                VStack {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                        .imageScale(.large)
                        .foregroundColor(.gray)
                    Text("About Me")
                        .foregroundColor(.gray)
                        .font(.title)
                }
            })
            
            /* old about me button versions
            
            // About Me (NavigationLink Version)
            NavigationLink(destination: AboutMeView()) {
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
            
            // About Me (Button Version)
            Button(action: {
                forwardToGitHub()
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
            */
            
        }//.navigationTitle("Hauptmenü")
    }
}

struct StartMenu_Previews: PreviewProvider {
    static var previews: some View {
        StartMenuView()
    }
}

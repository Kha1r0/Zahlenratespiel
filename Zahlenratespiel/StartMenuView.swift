//
//  StartMenuView.swift
//  Zahlenratespiel
//
//  Created by Dominik Kuckeburg on 01.07.23.
//

import SwiftUI
import SafariServices

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
            Button(action: {
                // if url is a valid url
                if let url = URL(string: "https://www.github.com/kha1r0" ) {
                    // make a safariViewController with the URL
                    let safariVC = SFSafariViewController(url: url)
                    // get the current scene
                    let scenes = UIApplication.shared.connectedScenes
                    // get the current scene as a UIWindowScene
                    let windowScene = scenes.first as? UIWindowScene
                    // get the first window of the scene which is the StartMenuView(?)
                    let window = windowScene?.windows.first
                    // let it present the SFSafariViewController
                    window?.rootViewController?.present(safariVC, animated: true)
                }
            }) {
                VStack {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                        .imageScale(.large)
                        .foregroundColor(.gray)
                    Text("About Me")
                        .foregroundColor(.gray)
                        .font(.largeTitle)
                }
            }
            
        }//.navigationTitle("Hauptmenü")
    }
}

struct StartMenu_Previews: PreviewProvider {
    static var previews: some View {
        StartMenuView()
    }
}

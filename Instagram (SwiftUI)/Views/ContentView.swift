//
//  ContentView.swift
//  Instagram (SwiftUI)
//
//  Created by Andrei Harnashevich on 7.08.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeFeedView()
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Home")
                }
            ExpolreView()
                .tabItem {
                    Image(systemName: "safari")
                    
                    Text("Expolre")
                }
            CameraView()
                .tabItem {
                    Image(systemName: "camera")
                    
                    Text("Camera")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")
                    
                    Text("Notifications")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    
                    Text("Profile")
                }
        }
    }
}

#Preview {
    ContentView()
}

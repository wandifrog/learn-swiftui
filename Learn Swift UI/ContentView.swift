//
//  ContentView.swift
//  Learn Swift UI
//
//  Created by Wandi on 16/03/21.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notification")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .font(.headline)
        .accentColor(Color("OrbitRed"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

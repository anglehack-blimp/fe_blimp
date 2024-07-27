
//
//  Home.swift
//  blimp
//
//  Created by Iwan Saputra on 28/07/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            MyProductView()
                .tabItem{
                    Label("My Item", systemImage: "cube.fill")
                }
                
            ProfileView()
                .tabItem() {
                    Label("Profile", systemImage: "person")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
